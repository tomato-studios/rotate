import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:rotate/import_page/application/cubit/import_cubit.dart';
import 'package:theming/theming.dart';

class ImportingBody extends StatelessWidget {
  const ImportingBody(this.state, {Key? key}) : super(key: key);

  final Importing state;

  @override
  Widget build(BuildContext context) {
    Theme.of(context).duration;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Importing ... ',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: Theme.of(context).spacing.l),
          Text(
            basename(state.file.path),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
