import 'dart:convert';
import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
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
  static final regexPkLine = RegExp(r'(\w{3})CFG\/CREW\/(\d*\w{1})');
  static final regexIdLine = RegExp(
      r'^Individualdutyplanfor\d*\w{1}(.*),(.*)NetLine.*CREWLINK((\d{2})(\D{3})(\d{2})).*Period:((\d{2})(\D{3})(\d{2}))-((\d{2})(\D{3})(\d{2}))');
  static final regexDutyLines = RegExp(
      r'((?:Mon|Tue|Wed|Thu|Fri|Sat|Sun)\d{2})(?:(\S+)([A-Z]{3})(?:(\d{4})(\d{4}))?(\w*)?|X).*?(?:\[(FT\d{1,2}:\d{2})\])?(?:\s*?\[(DP\d{1,2}:\d{2})\])?(?:\s*?\[(FDP\d{1,2}:\d{2})\])?(?:\s*?\[(RT\d{1,2}:\d{2})\])?(?:\s*?\[(mFDP\d{1,2}:\d{2})\])?(.*?)(?:\[(EQ\d{1,2}:\d{2})\]).*?(?:\[(BZW\d{1,2}:\d{2})\])');

  static const testRoster = 'Roster_22_03.pdf';
  static const idLineStartString = 'Individualdutyplanfor';

  static DateFormat dateFormat = DateFormat("ddMMMyy");

  // TODO: Check if Roster already exists, if yes update

  static void _parseRosterData(String rawText) {
    Roster newRoster = Roster();
    Iterable<String> list = LineSplitter.split(rawText);

    logger.d(rawText);

    // First Line (PK-Line)
    RegExpMatch? matches = regexPkLine.firstMatch(list.elementAt(0));
    newRoster.baseLocator = matches?.group(1);
    newRoster.pkNumber = matches?.group(2);

    // Second Line (ID-Line)
    matches = regexIdLine.firstMatch(list.elementAt(1));
    newRoster.user.surName = matches?.group(1);
    newRoster.user.name = matches?.group(2);
    newRoster.generationTime = dateFormat.parse(matches!.group(3)!);
    newRoster.dateRange = DateTimeRange(
        start: dateFormat.parse(matches.group(7)!),
        end: dateFormat.parse(matches.group(11)!));

    // Duty-List
    rawText = rawText.replaceAll(RegExp(r"\r\n|\n|\r"), " ");
    Iterable<RegExpMatch> dutyList = regexDutyLines.allMatches(rawText);

    dutyList.forEach((element) {
      logger.w("===================================");
      for (var i = 0; i < element.groupCount; i++) {
        logger.d(element.group(i));
      }
    });
  }

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

  static Future<List<int>> _readDocumentData(String name) async {
    final ByteData data = await rootBundle.load('assets/$name');
    return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  }
}
