part of 'duty_list_cubit.dart';

@freezed
class DutyListState with _$DutyListState {
  const DutyListState._();

  const factory DutyListState.loaded({
    required List<Duty> duties,
    required bool isLoading,
  }) = Loaded;

  const factory DutyListState.loading() = _Loading;

  List<DateTime> get dates {
    return map(
      loaded: (state) {
        final firstDate = state.duties.map((duty) => duty.start).reduce(
              (a, b) => a.isBefore(b) ? a : b,
            );
        final lastDate = state.duties.map((duty) => duty.start).reduce(
              (a, b) => a.isAfter(b) ? a : b,
            );
        final numberOfDays = lastDate.difference(firstDate).inDays;
        DateTime currentDate = firstDate;
        final listOfDays = <DateTime>[];
        for (var i = 0; i < numberOfDays; i++) {
          listOfDays.add(currentDate);
          currentDate = currentDate.add(const Duration(days: 1));
        }
        return listOfDays;
      },
      loading: (_) => [],
    );
  }

  static DutyListState watch(BuildContext context) =>
      context.watch<DutyListCubit>().state;
}
