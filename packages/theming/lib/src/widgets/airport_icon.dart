import 'package:aviation_entities/airport.dart';
import 'package:coordinate_drawer/coordinate_drawer.dart';
import 'package:flutter/material.dart';

class AirportIcon extends StatelessWidget {
  const AirportIcon({
    Key? key,
    required this.airport,
    this.size = 40,
    this.runwayWidth = 2,
    this.pixelPerDegree = 800,
    this.runwayColor,
    this.circleColor,
    this.borderColor,
  }) : super(key: key);

  final Airport airport;
  final double size;
  final double runwayWidth;
  final double pixelPerDegree;
  final Color? runwayColor;
  final Color? circleColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: circleColor ?? Theme.of(context).colorScheme.surface,
        border: Border.all(color: borderColor ?? Colors.transparent),
      ),
      height: size,
      width: size,
      child: CoordinateDrawer(
        pixelPerDegree: pixelPerDegree,
        lineWidth: runwayWidth,
        lineColor: runwayColor ?? Theme.of(context).colorScheme.secondary,
        coordinateLists: airport.runways
            .map(
              (r) => [
                Coordinate(
                    lat: r.direction1.start.latitude,
                    lon: r.direction1.start.longitude),
                Coordinate(
                    lat: r.direction1.end.latitude,
                    lon: r.direction1.end.longitude),
              ],
            )
            .toList(),
      ),
    );
  }
}
