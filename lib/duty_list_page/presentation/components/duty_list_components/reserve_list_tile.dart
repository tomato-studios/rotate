import 'package:flutter/material.dart';
import 'package:rotate/duty_list_page/presentation/components/duty_list_components/duty_list_entry.dart';
import 'package:rotate_entities/duty.dart';

class ReserveListTile extends StatelessWidget {
  const ReserveListTile(
    this.reserve, {
    Key? key,
  }) : super(key: key);
  final Reserve reserve;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StartTime(reserve.start),
        Text('Reserve', style: Theme.of(context).textTheme.button),
        EndTime(reserve.end),
      ],
    );
  }
}
