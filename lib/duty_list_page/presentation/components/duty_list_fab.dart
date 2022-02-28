import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:rotate/duty_list_page/application/cubit/duty_list_cubit.dart';
import 'package:theming/theming.dart';

class DutyListFloatingActionButton extends StatelessWidget {
  const DutyListFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // addPostFrameCallback necessary because otherwise scrollController is not bound to a list and throws
        SchedulerBinding.instance?.addPostFrameCallback((_) {
          DutyListCubit.of(context).animateListToToday(
            duration: Theme.of(context).duration.long,
          );
        });
      },
      tooltip: 'Today',
      child: const Icon(Icons.today),
    );
  }
}
