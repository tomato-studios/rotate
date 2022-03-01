import 'package:domain_model/domain_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rotate/duty_list_page/view/components/duty_list/flight_list_tile.dart';
import 'package:rotate/duty_list_page/view/components/duty_list/layover_list_tile.dart';
import 'package:rotate/duty_list_page/view/components/duty_list/off_list_tile.dart';
import 'package:rotate/duty_list_page/view/components/duty_list/reserve_list_tile.dart';
import 'package:rotate/duty_list_page/view/components/duty_list/standby_list_tile.dart';
import 'package:theming/theming.dart';

class DutyListEntry extends StatelessWidget {
  const DutyListEntry({required this.duty, Key? key}) : super(key: key);
  final Duty duty;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: Theme.of(context).borderRadius.all.m,
        border: Border.all(
          color: duty.maybeMap(
              off: (_) => Colors.green,
              standby: (_) => Colors.red,
              reserve: (_) => Colors.amber,
              orElse: () => Theme.of(context).dividerColor),
        ),
        color: Theme.of(context).cardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: duty.maybeMap(
          off: (_) => const OffListTile(),
          standby: (standby) => StandbyListTile(standby),
          reserve: (reserve) => ReserveListTile(reserve),
          flight: (flight) => FlightListTile(flight),
          layover: (layover) => LayoverListTile(layover),
          orElse: () => Text(duty.toString()),
        ),
      ),
    );
  }
}

class StartTime extends StatelessWidget {
  const StartTime(this.time, {Key? key}) : super(key: key);
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat('HH:mm');

    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        timeFormat.format(time),
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}

class EndTime extends StatelessWidget {
  const EndTime(this.time, {Key? key}) : super(key: key);
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat('HH:mm');

    return Align(
      // alignment: Alignment.centerRight,
      child: Text(
        timeFormat.format(time),
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}
