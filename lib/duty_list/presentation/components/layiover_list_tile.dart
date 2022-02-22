import 'package:domain_model/domain_model.dart';
import 'package:flutter/material.dart';

class LayoverListTile extends StatelessWidget {
  const LayoverListTile(
    this.layover, {
    Key? key,
  }) : super(key: key);
  final Layover layover;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('🌴 Layover at ${layover.airport}',
            style: Theme.of(context).textTheme.button),
      ],
    );
  }
}
