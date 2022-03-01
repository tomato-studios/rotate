import 'package:domain_model/domain_model.dart';
import 'package:flutter/material.dart';
import 'package:rotate/duty_list_page/view/components/duty_list/duty_list_entry.dart';

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
