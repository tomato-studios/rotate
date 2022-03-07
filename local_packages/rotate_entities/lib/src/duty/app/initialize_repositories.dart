import 'package:get_it/get_it.dart';
import 'package:rotate_entities/duty.dart';
import 'package:rotate_entities/src/duty/db/duty_sembast_repository.dart';
import 'package:sembast/sembast.dart';

// ignore: avoid_classes_with_only_static_members
class RotateRepositories {
  /// Instantiates the domain model repository [SembastDutyRepository] and
  /// registers it in the [GetIt] service locator.
  /// It can be accessed throughout the code by calling [GetIt.I.get<DutyRepository>();].
  static void initialize(DatabaseClient sembastDatabaseClient) {
    final repository = SembastDutyRepository(sembastDatabaseClient);
    GetIt.I.registerSingleton<DutyRepository>(repository);
  }
}
