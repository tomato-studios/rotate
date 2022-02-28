import 'package:auto_route/auto_route.dart';
import 'package:rotate/duty_list_page/presentation/duty_list_page.dart';
import 'package:rotate/home/presentation/home_page.dart';
import 'package:rotate/import_page/presentation/import_page.dart';
import 'package:rotate/splash/presentation/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(path: '/', page: HomePage, children: [
      MaterialRoute(path: 'duty_list', page: DutyListPage),
      MaterialRoute(path: 'import', page: ImportPage),
    ]),
  ],
)
class $AppRouter {}
