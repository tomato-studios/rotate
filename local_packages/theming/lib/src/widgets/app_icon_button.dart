import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.size = 50,
    this.rotation = 0,
  }) : super(key: key);

  final Function() onPressed;
  final Widget icon;
  final double? size;

  /// Icon rotation in rad
  final double rotation;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        elevation: 0,
        onPressed: onPressed,
        shape: const CircleBorder(),
        color: Colors.transparent,
        child: SizedBox(
          height: size,
          width: size,
          child: icon,
        ),
      ),
    );
  }
}
