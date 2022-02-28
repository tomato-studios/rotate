import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'import_cubit.freezed.dart';
part 'import_state.dart';

class ImportCubit extends Cubit<ImportState> {
  ImportCubit() : super(const ImportState.initial());

  Future<void> fileSelected(String filePath) async {
    final file = File(filePath);
    if (!file.existsSync()) {
      emit(ImportState.failure(
          file: file, failureMessage: 'Selected file does not exist'));
    }

    emit(ImportState.importing(file: file));

    // Simulate import delay // TODO: call actual duty plan import
    await Future.delayed(const Duration(seconds: 2));

    final success = Random().nextBool();
    if (success) {
      emit(ImportState.success(file: file, numberOfImportedRecords: 42));
    } else {
      emit(ImportState.failure(file: file, failureMessage: 'Import failed'));
    }
  }

  static ImportCubit of(BuildContext context) =>
      BlocProvider.of<ImportCubit>(context);
}
