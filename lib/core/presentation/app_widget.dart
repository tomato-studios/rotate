import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rotate/core/application/initialization_cubit/initialization_cubit.dart';
import 'package:rotate/core/application/settings_cubit/settings_cubit.dart';
import 'package:rotate/core/application/theme_cubit/theme_cubit.dart';
import 'package:rotate/core/presentation/routes/app_router.gr.dart';
import 'package:rotate/core/presentation/routes/scroll_behaviour.dart';
import 'package:theming/theming.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  // Cubits with init method which should be waited for
  final _themeCubit = ThemeCubit();
  final _settingsCubit = SettingsCubit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InitializationCubit()
            ..initialize(
              initializeFunctions: [
                _themeCubit.initialize,
                _settingsCubit.initialize,
              ],
            ),
        ),
        BlocProvider(
          create: (context) => _themeCubit,
        ),
        BlocProvider(
          create: (context) => _settingsCubit,
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocListener<InitializationCubit, InitializationState>(
            listener: (context, state) {
              state.map(
                loading: (_) => _appRouter.push(const SplashPageRoute()),
                initialized: (_) => _appRouter.replace(const HomePageRoute()),
              );
            },
            child: MaterialApp.router(
              scrollBehavior: AppScrollBehavior(),
              // ignore: avoid_redundant_argument_values
              showPerformanceOverlay: !kIsWeb &&
                  SettingsState.watch(context).showPerformanceOverlay,
              title: 'Rotate',
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: ThemeState.watch(context).mode,
              routerDelegate: AutoRouterDelegate(_appRouter),
              routeInformationParser: _appRouter.defaultRouteParser(),
            ),
          );
        },
      ),
    );
  }
}
