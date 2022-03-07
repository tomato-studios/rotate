import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:rotate_entities/rotate_entities.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

///
/// Helper class for Parsing operations
///
class RosterParser {
  static const _airlineConfigs = '../../../data/airline_configs';
  static const _dutyCodesFile = 'duty_codes.json';
  static const _dutyElementsFile = 'duty_elements.json';
  static const _parserInfoFile = 'parser_info.json';

  Future<List<DutyCode>>? _dutyCodes;
  Future<List<DutyElement>>? _dutyElements;
  Future<ParserInfo>? _parserInfo;

  Future<void> initialize(String airlineCode) async {
    final currentAirlinePath = '$_airlineConfigs/$airlineCode';

    _dutyCodes = _loadDutyCodesFromFile(currentAirlinePath);
    _dutyElements = _loadDutyElementsFromFile(currentAirlinePath);
    _parserInfo = _loadParserInfoFromFile(currentAirlinePath);
  }

  Future<List<DutyCode>> _loadDutyCodesFromFile(
      String currentAirlinePath) async {
    final jsonString = await rootBundle.loadString(
      '$currentAirlinePath/$_dutyCodesFile',
      cache: false,
    );
    return compute(DutyCode.listFromJsonString, jsonString);
  }

  Future<List<DutyElement>> _loadDutyElementsFromFile(
      String currentAirlinePath) async {
    final jsonString = await rootBundle.loadString(
      '$currentAirlinePath/$_dutyElementsFile',
      cache: false,
    );
    return compute(DutyElement.listFromJsonString, jsonString);
  }

  ParserInfo _loadParserInfoFromFile(String currentAirlinePath) async {
    final jsonString = await rootBundle.loadString(
      '$currentAirlinePath/$_parserInfoFile',
      cache: false,
    );
    Future<List<ParserInfo>> result =
        compute(ParserInfo.listFromJsonString, jsonString);

    return await result.
  }
}
