import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rotate/core/presentation/routes/app_router.gr.dart';
import 'package:rotate/home_page/presentation/settings_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //_ The AutoTabsScaffold is from the auto_route package and provides a more
    // or less out-of-the-box solution for tabs. Without it, we would need a lot of
    // boilerplate code to build the tabs. Here, we just specify everything in one place and it's done.
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => AppBar(
        title: const Text('Rotate'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => const SettingsModal(),
            ),
          ),
        ],
      ),
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_rounded),
            label: 'Duty',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload_rounded),
            label: 'Import',
          ),
        ],
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
      ),
      routes: const [
        DutyListPageRoute(),
        ImportPageRoute(),
      ],
    );
  }
}
