import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'import_cubit.freezed.dart';
part 'import_state.dart';

class ImportCubit extends Cubit<ImportState> {
  ImportCubit() : super(const ImportState.initial());
}
