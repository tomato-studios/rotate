import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:rotate/shared/logger.dart';

part 'roster_manager_cubit.freezed.dart';
part 'roster_manager_state.dart';

typedef FutureVoid = Future<void> Function();

///_ Here all actions take place which have to be done before showing anything to the user.
/// Like e.g. database RosterManager and calling of other initialize methods of other Cubits.
/// While RosterManager is in progress, the SplashPage is shown to the user.
class RosterManagerCubit extends Cubit<RosterManagerState> {
  RosterManagerCubit() : super(const RosterManagerState.loading());

  Future<void> initialize({
    required List<FutureVoid> initializeFunctions,
  }) async {
    Logger.level = Level.debug;
    logger.i('logging level: ${Logger.level}');

    emit(const RosterManagerState.initialized());
  }

  static RosterManagerCubit of(BuildContext context) =>
      BlocProvider.of<RosterManagerCubit>(context);
}
