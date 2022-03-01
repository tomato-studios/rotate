import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rotate/import_page/app/cubit/import_cubit.dart';
import 'package:rotate/import_page/view/components/import_button.dart';
import 'package:rotate/import_page/view/components/snackbars.dart';
import 'package:rotate/import_page/view/importing_body.dart';
import 'package:rotate/import_page/app/cubit/import_cubit.dart';
import 'package:theming/theming.dart';

class ImportPage extends StatelessWidget {
  const ImportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImportCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            // explained: BlocConsumer both contains BlocBuilder and BlocListener
            body: BlocConsumer<ImportCubit, ImportState>(
              // The builder builds different widgets based on the state.
              // Used for displayed content
              builder: (context, state) {
                return AnimatedSwitcher(
                  duration: Theme.of(context).duration.medium,
                  // state.map provides all available states and displayed different content based on the state
                  child: state.map(
                    initial: (_) => const InitialBody(),
                    importing: (state) => ImportingBody(state),
                    success: (_) => const InitialBody(),
                    failure: (_) => const InitialBody(),
                  ),
                );
              },
              // The listener listens to the state and reacts to changes
              // Used e.g. for snackbars
              listener: (context, state) => state.maybeMap(
                success: (state) => showImportSuccessSnackbar(context, state),
                failure: (state) => showImportFailureSnackbar(context, state),
                orElse: () => {},
              ),
            ),
          );
        },
      ),
    );
  }
}
