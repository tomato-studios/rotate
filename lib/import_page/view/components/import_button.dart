import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:rotate/import_page/view/components/snackbars.dart';
import 'package:rotate/import_page/app/cubit/import_cubit.dart';

class InitialBody extends StatelessWidget {
  const InitialBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void filePickerClosed(FilePickerResult? result) {
      if (result != null) {
        ImportCubit.of(context).fileSelected(result.files.single.path ?? '');
      } else {
        showNoFileSelectedSnackbar(context);
      }
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Upload Dutyplan',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          IconButton(
            iconSize: 120,
            onPressed: () async {
              final FilePickerResult? result = await FilePicker.platform
                  .pickFiles(); // TODO: allow only .pdf
              filePickerClosed(result);
            },
            icon: const Icon(Icons.upload_file_rounded),
          ),
        ],
      ),
    );
  }
}
