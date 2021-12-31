import 'package:dashboard/app/shared/helpers/local_navigator.dart';
import 'package:dashboard/app/shared/helpers/responsive_layout_widget.dart';
import 'package:dashboard/app/shared/widgets/large_screen.dart';
import 'package:dashboard/app/shared/widgets/menu/side_menu.dart';
import 'package:dashboard/app/shared/widgets/top_navigation_app_bar.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
          smallScreen: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          ),
          largeScreen: LargeScreen()),
    );
  }
}
