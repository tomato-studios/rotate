import 'package:domain_model/domain_model.dart';
import 'package:domain_model/src/infrastructure/duty_sembast_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:sembast/sembast.dart';

// ignore: avoid_classes_with_only_static_members
class DomainModelRepositories {
  /// Instantiates the domain model repository [SembastDutyRepository] and
  /// registers it in the [GetIt] service locator.
  static Future<void> initialize(DatabaseClient sembastDatabaseClient) async {
    final repository = SembastDutyRepository(sembastDatabaseClient);
    GetIt.I.registerSingleton<DutyRepository>(repository);
  }
}
