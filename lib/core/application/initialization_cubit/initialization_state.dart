part of 'initialization_cubit.dart';

@freezed
class InitializationState with _$InitializationState {
  const factory InitializationState.loading() = _Loading;
  const factory InitializationState.initialized() = _Initialized;
}
