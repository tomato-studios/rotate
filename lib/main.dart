import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rotate/core/presentation/app_widget.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

Future<void> main() async => runApp(AppWidget());

// runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red)),
              onPressed: _extractAllText,
              child: const Text(
                'Extract all text',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: _extractTextWithBounds,
              child: const Text(
                'Extract text with predefined bounds',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: _extractTextFromSpecificPage,
              child: const Text(
                'Extract text from a specific page',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: _extractTextFromRangeOfPage,
              child: const Text(
                'Extract text from a range of pages',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: _extractTextWithFontAndStyleInformation,
              child: const Text(
                'Extract text with font and style information',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _extractAllText() async {
    //Load the existing PDF document.
    final PdfDocument document =
        PdfDocument(inputBytes: await _readDocumentData('Roster_22_03.pdf'));

    //Create the new instance of the PdfTextExtractor.
    final PdfTextExtractor extractor = PdfTextExtractor(document);

    //Extract all the text from the document.
    final String text = extractor.extractText();
    final Iterable<String> list = LineSplitter.split(text);

    for (final e in list) {
      print('> $e');
    }

    // Removed /i at the end
    // Removed / in front - Thanks to Günter for warning
    // RegExp regExp = RegExp(
    //   r"^WS{1,2}:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:56789",
    //   caseSensitive: false,
    //   multiLine: false,
    // );
    // print(
    //     "allMatches : " + regExp.allMatches("WS://127.0.0.1:56789").toString());
    // print(
    //     "firstMatch : " + regExp.firstMatch("WS://127.0.0.1:56789").toString());
    // print("hasMatch : " + regExp.hasMatch("WS://127.0.0.1:56789").toString());
    // print("stringMatch : " +
    //     regExp.stringMatch("WS://127.0.0.1:56789").toString());

    //Display the text.
    Clipboard.setData(ClipboardData(text: text));
    _showResult(text);
  }

  Future<void> _extractTextWithBounds() async {
    //Load the existing PDF document.
    final PdfDocument document =
        PdfDocument(inputBytes: await _readDocumentData('invoice.pdf'));

    //Create the new instance of the PdfTextExtractor.
    final PdfTextExtractor extractor = PdfTextExtractor(document);

    //Extract all the text from the particular page.
    final List<TextLine> result = extractor.extractTextLines(startPageIndex: 0);

    //Predefined bound.
    final Rect textBounds = const Rect.fromLTWH(474, 161, 50, 9);

    String invoiceNumber = '';

    for (int i = 0; i < result.length; i++) {
      final List<TextWord> wordCollection = result[i].wordCollection;
      for (int j = 0; j < wordCollection.length; j++) {
        if (textBounds.overlaps(wordCollection[j].bounds)) {
          invoiceNumber = wordCollection[j].text;
          break;
        }
      }
      if (invoiceNumber != '') {
        break;
      }
    }

    //Display the text.
    _showResult(invoiceNumber);
  }

  Future<void> _extractTextFromSpecificPage() async {
    //Load the existing PDF document.
    final PdfDocument document =
        PdfDocument(inputBytes: await _readDocumentData('pdf_succinctly.pdf'));

    //Create the new instance of the PdfTextExtractor.
    final PdfTextExtractor extractor = PdfTextExtractor(document);

    //Extract all the text from the first page of the PDF document.
    final String text = extractor.extractText(startPageIndex: 2);

    //Display the text.
    _showResult(text);
  }

  Future<void> _extractTextFromRangeOfPage() async {
    //Load the existing PDF document.
    final PdfDocument document =
        PdfDocument(inputBytes: await _readDocumentData('pdf_succinctly.pdf'));

    //Create the new instance of the PdfTextExtractor.
    final PdfTextExtractor extractor = PdfTextExtractor(document);

    //Extract all the text from the first page to 3rd page of the PDF document.
    final String text =
        extractor.extractText(startPageIndex: 0, endPageIndex: 2);

    //Display the text.
    _showResult(text);
  }

  Future<void> _extractTextWithFontAndStyleInformation() async {
    //Load the existing PDF document.
    final PdfDocument document =
        PdfDocument(inputBytes: await _readDocumentData('invoice.pdf'));

    //Create the new instance of the PdfTextExtractor.
    final PdfTextExtractor extractor = PdfTextExtractor(document);

    //Extract all the text from specific page.
    final List<TextLine> result = extractor.extractTextLines(startPageIndex: 0);

    //Draw rectangle..
    for (int i = 0; i < result.length; i++) {
      final List<TextWord> wordCollection = result[i].wordCollection;
      for (int j = 0; j < wordCollection.length; j++) {
        if ('2058557939' == wordCollection[j].text) {
          //Get the font name.
          final String fontName = wordCollection[j].fontName;
          //Get the font size.
          final double fontSize = wordCollection[j].fontSize;
          //Get the font style.
          final List<PdfFontStyle> fontStyle = wordCollection[j].fontStyle;
          //Get the text.
          final String text = wordCollection[j].text;
          String fontStyleText = '';
          for (int i = 0; i < fontStyle.length; i++) {
            fontStyleText += '${fontStyle[i]} ';
          }
          fontStyleText = fontStyleText.replaceAll('PdfFontStyle.', '');
          _showResult(
              'Text : $text \r\n Font Name: $fontName \r\n Font Size: $fontSize \r\n Font Style: $fontStyleText');
          break;
        }
      }
    }
    //Dispose the document.
    document.dispose();
  }

  Future<List<int>> _readDocumentData(String name) async {
    final ByteData data = await rootBundle.load('assets/$name');
    return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  }

  void _showResult(String text) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Extracted text'),
            content: Scrollbar(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Text(text),
              ),
            ),
            actions: [
              TextButton(
                child: const Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
