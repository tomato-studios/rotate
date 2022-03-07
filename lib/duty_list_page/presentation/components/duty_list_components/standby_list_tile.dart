import 'package:flutter/material.dart';
import 'package:rotate/duty_list_page/presentation/components/duty_list_components/duty_list_entry.dart';
import 'package:rotate_entities/duty.dart';

class StandbyListTile extends StatelessWidget {
  const StandbyListTile(
    this.standby, {
    Key? key,
  }) : super(key: key);
  final StandbyDuty standby;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StartTime(standby.start),
        Text('Standby', style: Theme.of(context).textTheme.button),
        EndTime(standby.end),
      ],
    );
  }
}
