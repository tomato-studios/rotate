import 'package:domain_model/domain_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rotate/duty_list/application/mock_duty_generator.dart';

part 'duty_list_cubit.freezed.dart';
part 'duty_list_state.dart';

class DutyListCubit extends Cubit<DutyListState> {
  DutyListCubit() : super(const DutyListState.loading());

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
}
