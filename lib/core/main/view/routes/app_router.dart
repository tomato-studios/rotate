import 'package:auto_route/auto_route.dart';
import 'package:rotate/duty_list_page/view/duty_list_page.dart';
import 'package:rotate/home_page/view/home_page.dart';
import 'package:rotate/import_page/view/import_page.dart';
import 'package:rotate/splash_page/view/splash_page.dart';

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
