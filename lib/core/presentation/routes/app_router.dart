import 'package:auto_route/auto_route.dart';
<<<<<<< HEAD
import 'package:rotate/duty_list/presentation/duty_list_page.dart';
=======
import 'package:rotate/duty_list_page/presentation/duty_list_page.dart';
import 'package:rotate/home_page/presentation/home_page.dart';
import 'package:rotate/import_page/presentation/import_page.dart';
>>>>>>> rotate/project_structure
import 'package:rotate/splash/presentation/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
<<<<<<< HEAD
    MaterialRoute(page: DutyListPage, path: '/'),
=======
    MaterialRoute(path: '/', page: HomePage, children: [
      MaterialRoute(path: 'duty_list', page: DutyListPage),
      MaterialRoute(path: 'import', page: ImportPage),
    ]),
>>>>>>> rotate/project_structure
  ],
)
class $AppRouter {}
