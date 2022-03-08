part of 'roster_manager_cubit.dart';

@freezed
class RosterManagerState with _$RosterManagerState {
  const factory RosterManagerState.loading() = _Loading;
  const factory RosterManagerState.initialized() = _Initialized;
}
