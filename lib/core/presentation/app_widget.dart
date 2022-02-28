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
    //_ [MultiBlocProvider] can be used to provide multiple Blocs or Cubits to a Widget tree
    // without nesting single [BlocProvider]. Here they are all on the same 'level' which makes it nicer to read.
    // Blocs which are provided here above [MaterialApp] are available throughout the app and can be accessed
    // via the context.
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
      //_ We need a [Builder] in between a [BlocProvider] and a [BlocBuilder] or [BlocListener] for it to work properly.
      // If it's missing, the Bloc or Cubit can't accessed and we get a [ProviderNotFoundException].
      child: Builder(
        builder: (context) {
          //_ [BlocListeners] listen to state changes and perform a one-time action.
          // Here we navigate to the SplashPage if the loading state comes active and
          // then replace that route with the HomePage once initialization is finished.
          return BlocListener<InitializationCubit, InitializationState>(
            listener: (context, state) {
              state.map(
                loading: (_) => _appRouter.push(const SplashPageRoute()),
                initialized: (_) => _appRouter.replace(const HomePageRoute()),
              );
            },
            child: MaterialApp.router(
              scrollBehavior: AppScrollBehavior(),
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
