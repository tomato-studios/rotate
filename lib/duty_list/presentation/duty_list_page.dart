import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:rotate/duty_list/application/cubit/duty_list_cubit.dart';
import 'package:rotate/duty_list/presentation/components/duty_list/duty_list.dart';
import 'package:rotate/duty_list/presentation/components/duty_list_fab.dart';
import 'package:rotate/duty_list/presentation/components/settings_bottom_sheet.dart';
import 'package:rotate/duty_list/presentation/utils/date_time_extension.dart';

class DutyListPage extends StatelessWidget {
  const DutyListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DutyListCubit()..loadDuties(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            appBar: AppBar(
              title: const Text('Your Roster'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => const SettingsModal(),
                  ),
                ),
              ],
            ),
            body: DutyListState.watch(context).map(
              loaded: (state) => DutyList(
                state: state,
              ),
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

class DayListTile extends StatelessWidget {
  const DayListTile({required this.date, Key? key}) : super(key: key);

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
