import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rotate_entities/rotate_entities.dart';

// ignore: avoid_classes_with_only_static_members
class RosterParserClient {
  final String airlineCode;

  static const _airlineConfigs = 'package/roster_parser/data/airline_configs';
  static const _dutyCodesFile = 'duty_codes.json';
  static const _dutyElementsFile = 'duty_elements.json';
  static const _parserInfoFile = 'parser_info.json';

  Future<List<DutyCode>>? _dutyCodes;
  Future<List<DutyElement>>? _dutyElements;
  Future<List<ParserInfo>>? _parserInfo;

  RosterParserClient(this.airlineCode) {
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

  Future<List<ParserInfo>> _loadParserInfoFromFile(
      String currentAirlinePath) async {
    final jsonString = await rootBundle.loadString(
      '$currentAirlinePath/$_parserInfoFile',
      cache: false,
    );
    return compute(ParserInfo.listFromJsonString, jsonString);
  }
}
