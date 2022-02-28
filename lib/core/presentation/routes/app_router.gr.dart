// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../../duty_list_page/presentation/duty_list_page.dart' as _i3;
import '../../../home/presentation/home_page.dart' as _i2;
import '../../../import_page/presentation/import_page.dart' as _i4;
import '../../../splash/presentation/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomePageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    DutyListPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.DutyListPage());
    },
    ImportPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ImportPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashPageRoute.name, path: '/'),
        _i5.RouteConfig(HomePageRoute.name, path: '/', children: [
          _i5.RouteConfig(DutyListPageRoute.name,
              path: 'duty_list', parent: HomePageRoute.name),
          _i5.RouteConfig(ImportPageRoute.name,
              path: 'import', parent: HomePageRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i5.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute({List<_i5.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i3.DutyListPage]
class DutyListPageRoute extends _i5.PageRouteInfo<void> {
  const DutyListPageRoute() : super(DutyListPageRoute.name, path: 'duty_list');

  static const String name = 'DutyListPageRoute';
}

/// generated route for
/// [_i4.ImportPage]
class ImportPageRoute extends _i5.PageRouteInfo<void> {
  const ImportPageRoute() : super(ImportPageRoute.name, path: 'import');

  static const String name = 'ImportPageRoute';
}
