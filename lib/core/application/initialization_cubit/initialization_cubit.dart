import 'package:domain_model/domain_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:navigation_data/navigation_data.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rotate/core/infrastructure/sembast_database.dart';
import 'package:rotate/core/presentation/device_orientation.dart';
import 'package:rotate/core/presentation/fullscreen.dart';
import 'package:rotate/duty_list_page/application/mock_duty_generator.dart';
import 'package:rotate/shared/logger.dart';

part 'initialization_cubit.freezed.dart';
part 'initialization_state.dart';

typedef FutureVoid = Future<void> Function();

class InitializationCubit extends Cubit<InitializationState> {
  InitializationCubit() : super(const InitializationState.loading());

  Future<void> initialize(
      {required List<FutureVoid> initializeFunctions}) async {
    Logger.level = Level.debug;
    logger.i('logging level: ${Logger.level}');

    await _initializeActions();
    for (final initFunction in initializeFunctions) {
      await initFunction();
    }

    emit(const InitializationState.initialized());
  }

  static InitializationCubit of(BuildContext context) =>
      BlocProvider.of<InitializationCubit>(context);
}

Future<void> _initializeActions() async {
  setDeviceOrientation();
  setFullscreen();

  final dbPath = await _getDbPath();
  await _initializeNavigationData(dbPath);
  final sembastDb = SembastDatabase();
  await sembastDb.initialize(dbPath);
  await DomainModelRepositories.initialize(sembastDb.instance);
  await _fillDbWithMockDuties();
}

Future<void> _initializeNavigationData(String? dbPath) async {
  await NavigationData.initialize(
    isWeb: kIsWeb,
    dbDirectory: dbPath ?? '',
  );
}

Future<String> _getDbPath() async {
  if (kIsWeb) {
    return '';
  }
  // Application directory might be different on different os and os versions.
  //The package path_provider handles this and provides the correct path.
  final dbDirectory = await getApplicationDocumentsDirectory();
  dbDirectory.create(recursive: true);
  return dbDirectory.path;
}

Future<void> _fillDbWithMockDuties() async {
  await GetIt.I.get<DutyRepository>().deleteAll();
  final duties = generateMockDuties();
  await GetIt.I.get<DutyRepository>().putDuties(duties.toSet());
}
