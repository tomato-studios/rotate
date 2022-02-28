part of 'import_cubit.dart';

@freezed
class ImportState with _$ImportState {
  const factory ImportState.initial() = _Initial;

  const factory ImportState.importing({
    required File file,
  }) = Importing;

  const factory ImportState.success({
    required File file,
    required int numberOfImportedRecords,
  }) = ImportSuccess;

  const factory ImportState.failure({
    required File file,
    required String failureMessage,
  }) = ImportFailure;
}
