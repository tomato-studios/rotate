import 'package:aviation_units/aviation_units.dart';
import 'package:domain_model/domain_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:navigation_data/navigation_data.dart';
import 'package:rotate/duty_list_page/presentation/components/duty_list_components/duty_list_entry.dart';
import 'package:theming/theming.dart';

class FlightListTile extends StatelessWidget {
  const FlightListTile(
    this.flight, {
    Key? key,
  }) : super(key: key);
  final FlightDuty flight;

  @override
  Widget build(BuildContext context) {
    final airportRepository = GetIt.I.get<AirportRepository>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StartTime(flight.start),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AirportIcon(
              airport: airportRepository.findByIcaoCode(flight.from)!,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    flight.from.toUpperCase(),
                    style: Theme.of(context).textTheme.button,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Transform.rotate(
                      angle: Angle.deg45.rad,
                      child: const Icon(Icons.airplanemode_active),
                    ),
                  ),
                  Text(
                    flight.to.toUpperCase(),
                    style: Theme.of(context).textTheme.button,
                  )
                ],
              ),
            ),
            AirportIcon(
              airport: airportRepository.findByIcaoCode(flight.to)!,
            )
          ],
        ),
        EndTime(flight.end),
      ],
    );
  }
}
