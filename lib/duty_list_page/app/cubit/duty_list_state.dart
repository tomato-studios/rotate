part of 'duty_list_cubit.dart';

@freezed
class DutyListState with _$DutyListState {
  const DutyListState._();

  const factory DutyListState.loaded({
    required List<Duty> duties,
    required bool isLoading,
  }) = Loaded;

  const factory DutyListState.loading() = _Loading;

  static DutyListState watch(BuildContext context) =>
      context.watch<DutyListCubit>().state;
}
