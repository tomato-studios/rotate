import 'package:auto_route/auto_route.dart';
import 'package:rotate/duty_list/presentation/duty_list_page.dart';
import 'package:rotate/splash/presentation/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: DutyListPage, path: '/'),
  ],
)
class $AppRouter {}
