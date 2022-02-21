import 'dart:convert';
import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  static const testRoster = 'Roster_22_03.pdf';
  static const idLineStartString = 'Individualdutyplanfor';

  // TODO: Check if Roster already exists, if yes update

  static void _parseRosterData(String rawText) {
    Roster newRoster = Roster();
    Iterable<String> list = LineSplitter.split(rawText);

    logger.d(rawText);

    RegExpMatch? matches = regexPkLine.firstMatch(list.elementAt(0));
    newRoster.baseLocator = matches?.group(1);
    newRoster.pkNumber = matches?.group(2);

    matches = regexPkLine.firstMatch(list.elementAt(1));
    newRoster.baseLocator = matches?.group(1);
    newRoster.pkNumber = matches?.group(2);
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
