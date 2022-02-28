import 'package:domain_model/domain_model.dart';
import 'package:flutter/material.dart';
import 'package:infinite_listview/infinite_listview.dart';
import 'package:rotate/duty_list_page/application/cubit/duty_list_cubit.dart';
import 'package:rotate/duty_list_page/presentation/components/duty_list/duty_list_entry.dart';
import 'package:rotate/duty_list_page/presentation/duty_list_page.dart';
import 'package:rotate/duty_list_page/presentation/utils/date_time_extension.dart';

class DutyList extends StatelessWidget {
  const DutyList({
    required this.state,
    Key? key,
  }) : super(key: key);

  final Loaded state;

  @override
  Widget build(BuildContext context) {
    return InfiniteListView.builder(
      controller: DutyListCubit.of(context).infiniteScrollController,
      itemBuilder: (context, index) {
        final listTileDate = DateTime.now().add(Duration(days: index));
        final dayDuties = state.duties
            .where((duty) => duty.start.isSameDate(listTileDate))
            .map((duty) => duty);

        final backgroundColor = listTileDate.isToday()
            ? Theme.of(context).splashColor
            : Colors.transparent;
        return Container(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(height: 0),
              const SizedBox(height: 8),
              DayListTile(date: listTileDate),
              if (dayDuties.isNotEmpty) const SizedBox(height: 8),
              _DutyList(dayDuties),
              const SizedBox(height: 8),
              const Divider(height: 0),
            ],
          ),
        );
      },
    );
  }
}

class _DutyList extends StatelessWidget {
  const _DutyList(this.duties, {Key? key}) : super(key: key);
  final Iterable<Duty> duties;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          ...duties.map(
            (duty) => Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: DutyListEntry(
                duty: duty,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
