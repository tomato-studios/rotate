import 'dart:math';

import 'package:domain_model/domain_model.dart';
import 'package:get_it/get_it.dart';
import 'package:navigation_data/navigation_data.dart';

List<Duty> generateMockDuties() {
  final list = <Duty>[];
  final firstDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  for (var i = 0; i < 100; i++) {
    final start = firstDay.add(
      Duration(
        days: i,
        hours: Random().nextInt(10),
        minutes: Random().nextInt(60),
      ),
    );
    final end = start.add(
      Duration(
        hours: Random().nextInt(10),
        minutes: Random().nextInt(60),
      ),
    );

    late List<Duty> dayDuties = [
      Duty.off(
        start: start,
        end: end,
        dutyCode: 'OFF',
      )
    ];

    final randomType = Random().nextInt(5);

    if (randomType == 0) {
      dayDuties = [
        Duty.off(
          start: start,
          end: end,
          dutyCode: 'OFF',
        )
      ];
    }
    if (randomType == 1) {
      dayDuties = [
        Duty.layover(
          start: start,
          end: end,
          airport: _randomAirportCode(),
          dutyCode: 'LAYOVER',
        )
      ];
    }
    if (randomType == 2) {
      dayDuties = [
        Duty.standby(
          dutyCode: 'STANDBY',
          start: start,
          end: end,
        )
      ];
    }
    if (randomType == 3) {
      dayDuties = [
        Duty.reserve(
          dutyCode: 'RESERVE',
          start: start,
          end: end,
        )
      ];
    }
    if (randomType == 4) {
      dayDuties = [];
      final numberOfFlights = Random().nextInt(3) + 1;

      String? previousDestination;
      DateTime? previousEndTime;
      for (var i = 0; i < numberOfFlights; i++) {
        final flight = _createFlight(
          from: previousDestination,
          startDateTime: (previousEndTime ?? start).add(
            const Duration(minutes: 45),
          ),
          endDateTime: (previousEndTime ?? start).add(
            Duration(
              hours: Random().nextInt(2) + 1,
              minutes: Random().nextInt(60),
            ),
          ),
        );
        dayDuties.add(flight);
        previousDestination = (flight as FlightDuty).to;
        previousEndTime = flight.end;
      }
    }
    // if (randomType == 5) {
    //   dayDuties = [
    //     Duty.groundEvent(
    //       dutyCode: 'GND SEP',
    //       start: start,
    //       end: end,
    //     )
    //   ];
    // }
    // if (randomType == 6) {
    //   final from = _randomAirportCode();
    //   final to = _randomAirportCode();
    //   dayDuties = [
    //     Duty.flight(
    //       dutyCode: '$from-$to',
    //       start: start,
    //       end: end,
    //       from: from,
    //       to: to,
    //     )
    //   ];
    // }
    if (i == 0) {
      dayDuties = [
        _createFlight(
          from: 'eddf',
          to: 'lepa',
          startDateTime: start,
          endDateTime: start.add(const Duration(hours: 2, minutes: 22)),
        ),
        _createFlight(
          from: 'lepa',
          to: 'eddf',
          startDateTime: start.add(const Duration(hours: 2, minutes: 59)),
          endDateTime: start.add(const Duration(hours: 5, minutes: 22)),
        ),
      ];
    }

    list.addAll(dayDuties);
  }
  return list;
}

String _randomAirportCode() {
  final allAirports = GetIt.I.get<AirportRepository>().findAll();
  return allAirports[Random().nextInt(allAirports.length)].icaoCode;
}

Duty _createFlight({
  String? from,
  String? to,
  required DateTime startDateTime,
  required DateTime endDateTime,
}) {
  final fromAirport = from ?? _randomAirportCode();
  final toAirport = to ?? _randomAirportCode();
  return Duty.flight(
    dutyCode: '$from-$to',
    start: startDateTime,
    end: endDateTime,
    from: fromAirport,
    to: toAirport,
  );
}
