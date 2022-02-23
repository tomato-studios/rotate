import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rotate/shared/logger.dart';

void setFullscreen() {
  if (!kIsWeb) {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom],
    );

    SystemChrome.setSystemUIChangeCallback(
      (isFullscreen) async {
        logger.i('ui overlay changed. isFullscreen: $isFullscreen');
        if (!isFullscreen) {
          await Future.delayed(const Duration(seconds: 2));
          logger.i('restoring fullscreen mode');
          SystemChrome.restoreSystemUIOverlays();
        }
      },
    );
  }
}
