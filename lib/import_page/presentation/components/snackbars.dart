import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:rotate/import_page/application/cubit/import_cubit.dart';

void showNoFileSelectedSnackbar(BuildContext context) =>
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('No file selected'),
      ),
    );

void showImportSuccessSnackbar(BuildContext context, ImportSuccess state) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Successfully imported ${state.numberOfImportedRecords} '
          'of ${basename(state.file.path)}.',
        ),
      ),
    );

void showImportFailureSnackbar(BuildContext context, ImportFailure state) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Theme.of(context).colorScheme.error,
        content: Text(
          'Failed to import ${basename(state.file.path)}',
          style: Theme.of(context)
              .snackBarTheme
              .contentTextStyle
              ?.copyWith(color: Theme.of(context).colorScheme.onError),
        ),
      ),
    );
