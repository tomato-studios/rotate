import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:rotate/src/roster/duty.dart';
import 'package:rotate/src/roster/roster.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

///
/// Helper class for Parsing operations
///
class ParserUtils {
  // Regex Strings
  static final regexNewLine = RegExp(r'\r\n|\n|\r');
  static final regexPkLine = RegExp(r'(\w{3})CFG\/CREW\/(\d*\w{1})');
  static final regexIdLine = RegExp(
      r'^Individualdutyplanfor\d*\w{1}(.*),(.*)NetLine.*CREWLINK((\d{2})(\D{3})(\d{2})).*Period:((\d{2})(\D{3})(\d{2}))-((\d{2})(\D{3})(\d{2}))');
  static final regexDutyLines = RegExp(
      r'(?<Date>(?:Mon|Tue|Wed|Thu|Fri|Sat|Sun)(?<Day>\d{2}))(?:(?<DutyCode>\S+)(?<Airport>[A-Z]{3})(?:(?<DepTime>\d{4})(?<ArrTime>\d{4}))?(?<AcType>\w*)?|X).*?(?:\[(?<FT>FT\d{1,2}:\d{2})\])?(?:\s*?\[(?<DP>DP\d{1,2}:\d{2})\])?(?:\s*?\[(?<FDP>FDP\d{1,2}:\d{2})\])?(?:\s*?\[(?<RT>RT\d{1,2}:\d{2})\])?(?:\s*?\[(?<mFDP>mFDP\d{1,2}:\d{2})\])?(?<Comment>.*?)(?:\[(?<EQ>EQ\d{1,2}:\d{2})\]).*?(?:\[(?<BZW>BZW\d{1,2}:\d{2})\])');
  static final regexNameLines = RegExp(
      r'(?<Date>(?:Mon|Tue|Wed|Thu|Fri|Sat|Sun)\d{2})(?:(?<DutyCode>\S+)(?<Airport>[A-Z]{3})(?:(?<DepTime>\d{4})(?<ArrTime>\d{4}))?)\s*?crewonevent:(?<CrewNames>.*?)(?=Mon|Tue|Wed|Thu|Fri|Sat|Sun|RecurrentTraining)');

  static final DateFormat dateFormat = DateFormat("ddMMMyy");

  // For Debug only
  static const testRoster = 'Roster_22_03.pdf';

  // TODO: Check if Roster already exists, if yes update

  static Future<void> extractAllText() async {
    //Load the existing PDF document.
    PdfDocument document =
        PdfDocument(inputBytes: await _readDocumentData(testRoster));

    //Create the new instance of the PdfTextExtractor.
    PdfTextExtractor extractor = PdfTextExtractor(document);

    //Extract all the text from the document.
    String text = extractor.extractText();

    _parseRosterData(text);
  }

  static void _parseRosterData(String rawText) {
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

  static Future<List<int>> _readDocumentData(String name) async {
    final ByteData data = await rootBundle.load('assets/$name');
    return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  }

  static void _parsePkLine(String rawText, Roster newRoster) async {
    // First Line (PK-Line)
    Iterable<String> list = LineSplitter.split(rawText);
    RegExpMatch? matches = regexPkLine.firstMatch(list.elementAt(0));
    newRoster.baseLocator = matches?.group(1);
    newRoster.pkNumber = matches?.group(2);
  }

  static void _parseIdLine(String rawText, Roster newRoster) async {
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

  static Future<Iterable<RegExpMatch>> _parseDuties(
      String rawText, Roster newRoster) async {
    // Duty-List
    rawText = rawText.replaceAll(regexNewLine, " ");
    Iterable<RegExpMatch> dutyList = regexDutyLines.allMatches(rawText);

    dutyList.forEach((element) {
      Duty currDuty;
      logger.e(element.namedGroup("Date"));
      for (var i = 0; i < element.groupCount; i++) {
        logger.d(element.group(i));
      }
    });

    return dutyList;
  }

  static Future<Iterable<RegExpMatch>> _parseNames(
      String rawText, Roster newRoster) async {
    // Duty-List
    rawText = rawText.replaceAll(regexNewLine, " ");
    Iterable<RegExpMatch> nameList = regexNameLines.allMatches(rawText);

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
