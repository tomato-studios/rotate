import 'dart:math';

import 'package:flutter/material.dart';

//_ Here is an example of a simple animation.
// Animations need a StatefulWidget. Inside the `initState` method the `AnimationController` is set up.
// For the vsync we also need to provide the `SingleTickerProviderStateMixin` to the state.
// The animation can then be started by `_controller.forward()`, _controller.reverse()` or _controller.repeat()`.
// A controller should always be disposed after it is no longer needed. This happens in the widget `dispose` method.
// an `AnimatedBuilder` widget is then used to build the an animated widget. Simpler animations can
// be achieved by using widgets like `AnimatedSwitcher`, `AnimatedContainer` where you only have to provide
// the animation duration and the respective changes are then automatically animated.
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
