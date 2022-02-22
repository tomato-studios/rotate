import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:rotate/duty_list/application/cubit/duty_list_cubit.dart';
import 'package:rotate/duty_list/presentation/components/duty_list.dart';
import 'package:rotate/duty_list/presentation/components/settings_bottom_sheet.dart';

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
              loaded: (state) => DutyList(state),
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DayListTile extends StatelessWidget {
  const DayListTile({required this.day, Key? key}) : super(key: key);

  final DateTime day;

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('dd.MM.yyyy');
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        formatter.format(day),
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
