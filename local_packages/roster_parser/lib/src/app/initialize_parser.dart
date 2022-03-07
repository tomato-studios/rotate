import 'package:get_it/get_it.dart';
import 'package:roster_parser/src/domain/roster_parser_client.dart';

// ignore: avoid_classes_with_only_static_members
class RosterParser {
  /// Instantiates the domain model repository [SembastDutyRepository] and
  /// registers it in the [GetIt] service locator.
  /// It can be accessed throughout the code by calling [GetIt.I.get<DutyRepository>();].
  static void initialize(String airlineCode) {
    final repository = RosterParserClient(airlineCode);
    GetIt.I.registerSingleton<RosterParserClient>(repository);
  }
}
