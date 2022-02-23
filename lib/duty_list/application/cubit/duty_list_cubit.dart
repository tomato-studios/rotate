import 'package:domain_model/domain_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_listview/infinite_listview.dart';
import 'package:rotate/duty_list/application/mock_duty_generator.dart';

part 'duty_list_cubit.freezed.dart';
part 'duty_list_state.dart';

class DutyListCubit extends Cubit<DutyListState> {
  DutyListCubit() : super(const DutyListState.loading()) {
    infiniteScrollController = InfiniteScrollController();
  }

  late InfiniteScrollController infiniteScrollController;

  Future<void> loadDuties() async {
    emit(const DutyListState.loading());
    final duties = generateMockDuties();

    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 1000));
    emit(
      DutyListState.loaded(
        duties: duties,
        isLoading: false,
      ),
    );
  }

  void animateListToToday({required Duration duration}) {
    infiniteScrollController.animateTo(
      0,
      duration: duration,
      curve: Curves.ease,
    );
  }

  static DutyListCubit of(BuildContext context) =>
      BlocProvider.of<DutyListCubit>(context);
}
