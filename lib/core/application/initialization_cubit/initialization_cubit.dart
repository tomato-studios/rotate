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
import 'package:rotate_entities/duty.dart';

part 'initialization_cubit.freezed.dart';
part 'initialization_state.dart';

typedef FutureVoid = Future<void> Function();

///_ Here all actions take place which have to be done before showing anything to the user.
/// Like e.g. database initialization and calling of other initialize methods of other Cubits.
/// While initializatino is in progress, the SplashPage is shown to the user.
class InitializationCubit extends Cubit<InitializationState> {
  InitializationCubit() : super(const InitializationState.loading());

  Future<void> initialize({
    required List<FutureVoid> initializeFunctions,
  }) async {
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
  RotateRepositories.initialize(sembastDb.instance);
  await _fillDbWithMockDuties();
}

Future<void> _initializeNavigationData(String? dbPath) async {
  await NavigationData.initialize(
    isWeb: kIsWeb,
    dbDirectory: dbPath ?? '',
    loadAirportsOnly: true,
  );
}

// Application directory might be different on different os and os versions.
// The package path_provider handles this and provides the correct path for
// method `getApplicationDocumentsDirectory()`.
Future<String> _getDbPath() async {
  if (kIsWeb) {
    return '';
  }
  final dbDirectory = await getApplicationDocumentsDirectory();
  dbDirectory.create(recursive: true);
  return dbDirectory.path;
}

Future<void> _fillDbWithMockDuties() async {
  final dutyRepository = GetIt.I.get<DutyRepository>();
  if ((await dutyRepository.findAll()).isNotEmpty) {
    return;
  }
  await dutyRepository.deleteAll();
  final duties = generateMockDuties();
  await dutyRepository.putDuties(duties.toSet());
}
