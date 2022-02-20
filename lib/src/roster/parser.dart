import 'dart:convert';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rotate/src/roster/roster.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

///
/// Helper class for Parsing operations
///
class ParserUtils {
  final regexPkLine = RegExp('(\w{3})CFG\/CREW\/(\d*\w{1})');
  final testRoster = 'Roster_22_03.pdf';
  final idLineStartString = 'Individualdutyplanfor';

  // TODO: Check if Roster already exists, if yes update

  void _parseRosterData(String rawText) {
    Roster newRoster = Roster();
    Iterable<String> list = LineSplitter.split(rawText);

    Iterable<RegExpMatch> matches = regexPkLine.allMatches(list.first);
    newRoster.baseLocator = matches.elementAt(0).group(0);
    newRoster.pkNumber = matches.elementAt(0).group(1);

    list.forEach((e) {
      if (e.startsWith(idLineStartString)) {}

      print("> $e");
    });
  }

  Future<String> _extractAllText(ByteData pdfData) async {
    //Load the existing PDF document.
    PdfDocument document =
        PdfDocument(inputBytes: await _readDocumentData(testRoster));

    //Create the new instance of the PdfTextExtractor.
    PdfTextExtractor extractor = PdfTextExtractor(document);

    //Extract all the text from the document.
    String text = extractor.extractText();
    _parseRosterData(text);

    return text;
  }

  Future<List<int>> _readDocumentData(String name) async {
    final ByteData data = await rootBundle.load('assets/$name');
    return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  }
}
