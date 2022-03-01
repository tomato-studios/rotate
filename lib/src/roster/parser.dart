import 'dart:convert';
import 'dart:io';

import 'package:domain_model/domain_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:rotate/utils/logger.dart';
import 'package:rotate/src/roster/roster.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

///
/// Helper class for Parsing operations
///
class ParserUtils {
  // Regex Strings
  final regexNewLine = RegExp(r'\r\n|\n|\r');
  final regexPkLine = RegExp(r'(\w{3})CFG\/CREW\/(\d*\w{1})');
  final regexIdLine = RegExp(
      r'^Individualdutyplanfor\d*\w{1}(.*),(.*)NetLine.*CREWLINK((\d{2})(\D{3})(\d{2})).*Period:((\d{2})(\D{3})(\d{2}))-((\d{2})(\D{3})(\d{2}))');
  final regexDutyLines = RegExp(
      r'(?<Date>(?:Mon|Tue|Wed|Thu|Fri|Sat|Sun)(?<Day>\d{2}))(?:(?<DutyCode>\S+)(?<Airport>[A-Z]{3})(?:(?<DepTime>\d{4})(?<ArrTime>\d{4}))?(?<AcType>\w*)?|X).*?(?:\[(?<FT>FT\d{1,2}:\d{2})\])?(?:\s*?\[(?<DP>DP\d{1,2}:\d{2})\])?(?:\s*?\[(?<FDP>FDP\d{1,2}:\d{2})\])?(?:\s*?\[(?<RT>RT\d{1,2}:\d{2})\])?(?:\s*?\[(?<mFDP>mFDP\d{1,2}:\d{2})\])?(?<Comment>.*?)(?:\[(?<EQ>EQ\d{1,2}:\d{2})\]).*?(?:\[(?<BZW>BZW\d{1,2}:\d{2})\])');
  final regexNameLines = RegExp(
      r'(?<Date>(?:Mon|Tue|Wed|Thu|Fri|Sat|Sun)\d{2})(?:(?<DutyCode>\S+)(?<Airport>[A-Z]{3})(?:(?<DepTime>\d{4})(?<ArrTime>\d{4}))?)\s*?crewonevent:(?<CrewNames>.*?)(?=Mon|Tue|Wed|Thu|Fri|Sat|Sun|RecurrentTraining)');

  final DateFormat dateFormat = DateFormat("ddMMMyy");
  final DateFormat formatDepTime = DateFormat('hhmm');

  // Regex Groups
  final regexGroupDate = 'Date';
  final regexGroupDay = 'Day';
  final regexGroupDutyCode = 'DutyCode';
  final regexGroupAirport = 'Airport';
  final regexGroupDepTime = 'DepTime';
  final regexGroupArrTime = 'ArrTime';
  final regexGroupAcType = 'AcType';
  final regexGroupFT = 'FT';
  final regexGroupDP = 'DP';
  final regexGroupFDP = 'FDP';
  final regexGroupRT = 'RT';
  final regexGroupMFDP = 'mFDP';
  final regexGroupComment = 'Comment';
  final regexGroupEQ = 'EQ';
  final regexGroupBZW = 'BZW';

  // Duty codes
  static const List<String> _offCodes = <String>['OFF', 'ORT', '-'];
  static const List<String> _hotCodes = <String>['HOT'];
  static const List<String> _sbyCodes = <String>['WARPX_3', 'RC'];
  static const List<String> _resCodes = <String>['WARPX_3', 'RC'];
  static const List<String> _fltCodes = <String>['WARPX_3', 'RC'];
  static const List<String> _gndCodes = <String>['GC_NL', 'RFT', 'DGR'];
  static const List<String> _trvCodes = <String>['WARPX_3', 'RC'];
  static const List<String> _simCodes = <String>['WARPX_3', 'RC'];

  // For Debug only
  static const testRoster = 'Roster_22_03.pdf';

  // TODO: Check if Roster already exists, if yes update
  Future<void> extractAllText() async {
    //Load the existing PDF document.
    PdfDocument document =
        PdfDocument(inputBytes: await _readDocumentData(testRoster));

    //Create the new instance of the PdfTextExtractor.
    PdfTextExtractor extractor = PdfTextExtractor(document);

    //Extract all the text from the document.
    String text = extractor.extractText();

    _parseRosterData(text);
  }

  void _parseRosterData(String rawText) {
    Roster newRoster = Roster();

    // Debug Log
    logger.d(rawText);

    // First Line (PK-Line)
    _parsePkLine(rawText, newRoster);
    // Second Line (ID-Line)
    _parseIdLine(rawText, newRoster);
    // Duty-List
    _parseDuties(rawText, newRoster);
    // Name-List
    _parseNames(rawText, newRoster);
  }

  Future<List<int>> _readDocumentData(String name) async {
    final ByteData data = await rootBundle.load('assets/$name');
    return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  }

  void _parsePkLine(String rawText, Roster newRoster) {
    // First Line (PK-Line)
    Iterable<String> list = LineSplitter.split(rawText);
    RegExpMatch? matches = regexPkLine.firstMatch(list.elementAt(0));
    newRoster.baseLocator = matches?.group(1);
    newRoster.pkNumber = matches?.group(2);
  }

  void _parseIdLine(String rawText, Roster newRoster) {
    // First Line (PK-Line)
    Iterable<String> list = LineSplitter.split(rawText);
    RegExpMatch? matches = regexIdLine.firstMatch(list.elementAt(1));
    newRoster.user.surName = matches?.group(1);
    newRoster.user.name = matches?.group(2);
    newRoster.generationTime = dateFormat.parse(matches!.group(3)!);
    newRoster.dateRange = DateTimeRange(
        start: dateFormat.parse(matches.group(7)!),
        end: dateFormat.parse(matches.group(11)!));
  }

  Future<Iterable<RegExpMatch>> _parseDuties(
      String rawText, Roster newRoster) async {
    // Duty-List
    final rawTextWithoutNewlines = rawText.replaceAll(regexNewLine, ' ');
    final Iterable<RegExpMatch> dutyList =
        regexDutyLines.allMatches(rawTextWithoutNewlines);

    for (final element in dutyList) {
      final dutyCode = element.namedGroup(regexGroupDutyCode);

      if (_offCodes.contains(dutyCode)) {
        DateTime(
            newRoster.dateRange!.start.year,
            newRoster.dateRange!.start.month,
            int.parse(element.namedGroup('Day')!));
      } else if (_gndCodes.contains(dutyCode)) {
      } else if (_simCodes.contains(dutyCode)) {
      } else {}
      logger.e(element.namedGroup("Date"));
      for (var i = 0; i < element.groupCount; i++) {
        logger.d(element.group(i));
      }
    }

    return dutyList;
  }

  Future<Iterable<RegExpMatch>> _parseNames(
      String rawText, Roster newRoster) async {
    // Duty-List
    final rawTextReplaced = rawText.replaceAll(regexNewLine, " ");
    Iterable<RegExpMatch> nameList = regexNameLines.allMatches(rawTextReplaced);

    nameList.forEach((element) {
      logger.w("===================================");
      logger.e(element.namedGroup("Date"));
      for (var i = 0; i < element.groupCount; i++) {
        logger.d(element.group(i));
      }
    });

    return nameList;
  }
}
