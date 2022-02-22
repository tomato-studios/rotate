import 'package:flutter/material.dart';
import 'package:rotate/duty_list/application/cubit/duty_list_cubit.dart';
import 'package:rotate/duty_list/presentation/components/duty_list_entry.dart';
import 'package:rotate/duty_list/presentation/duty_list_page.dart';

class DutyList extends StatelessWidget {
  const DutyList(this.state, {Key? key}) : super(key: key);

  final Loaded state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.dates.length,
      itemBuilder: (context, index) {
        final currentDate = state.dates[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DayListTile(day: currentDate),
              ...state.duties
                  .where((duty) => duty.start.isSameDate(currentDate))
                  .map(
                    (duty) => Column(
                      children: [
                        DutyListEntry(
                          duty: duty,
                        ),
                      ],
                    ),
                  ),
            ],
          ),
        );
      },
    );
  }
}
