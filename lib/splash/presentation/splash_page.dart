import 'package:flutter/material.dart';
import 'package:rotate/splash/presentation/rotating_tomato.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: RotatingTomato(),
    );
  }
}
