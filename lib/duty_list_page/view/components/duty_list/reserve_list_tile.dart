import 'package:domain_model/domain_model.dart';
import 'package:flutter/material.dart';
import 'package:rotate/duty_list_page/view/components/duty_list/duty_list_entry.dart';

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
