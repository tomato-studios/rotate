import 'package:flutter/material.dart';

class OffListTile extends StatelessWidget {
  const OffListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('OFF', style: Theme.of(context).textTheme.button),
    );
  }
}
