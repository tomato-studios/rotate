import 'dart:math';

import 'package:flutter/material.dart';

class RotatingTomato extends StatefulWidget {
  const RotatingTomato({Key? key}) : super(key: key);

  @override
  _RotatingTomatoState createState() => _RotatingTomatoState();
}

class _RotatingTomatoState extends State<RotatingTomato>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) => Transform.rotate(
        angle: _controller.value * 2 * pi,
        child: Text(
          '🍅',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
