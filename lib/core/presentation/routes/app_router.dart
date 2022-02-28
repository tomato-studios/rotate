import 'package:auto_route/auto_route.dart';
import 'package:rotate/duty_list_page/presentation/duty_list_page.dart';
import 'package:rotate/home_page/presentation/home_page.dart';
import 'package:rotate/import_page/presentation/import_page.dart';
import 'package:rotate/splash/presentation/splash_page.dart';

///_ Here we define the routes of the app.
/// From this some code is generated inside `app_router.gr.dart` which provides
/// useful navigation toolset.
/// Without this, we would have to write a lot of boilerplate code to navigate to a new page.
/// Navigation to new page can then be done by calling
/// `AutoRouter.of(context).push(ImportPageRoute);`
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
