import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:rotate/duty_list_page/application/cubit/duty_list_cubit.dart';
import 'package:rotate/duty_list_page/presentation/components/duty_list.dart';
import 'package:rotate/duty_list_page/presentation/components/duty_list_fab.dart';
import 'package:rotate/duty_list_page/presentation/utils/date_time_extension.dart';

class DutyListPage extends StatelessWidget {
  const DutyListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //_ The DutyListCubit handles only the state of the [DutyListPage]. That's why
    // we don't need to provide the Cubit in the top-level [AppWidget]. It's not
    // available outside this widget tree.
    return BlocProvider(
      create: (context) => DutyListCubit()..loadDuties(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            body: DutyListState.watch(context).map(
              loaded: (state) => DutyList(state: state),
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            floatingActionButton: const DutyListFloatingActionButton(),
          );
        },
      ),
    );
  }
}

class DateHeaderListTile extends StatelessWidget {
  const DateHeaderListTile({required this.date, Key? key}) : super(key: key);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('EEE dd.MM.yyyy');
    final textColor =
        date.isToday() ? Theme.of(context).colorScheme.secondary : null;
    return Text(
      formatter.format(date),
      style: Theme.of(context).textTheme.button!.copyWith(color: textColor),
    );
  }
}
