import 'package:dashboard/app/shared/helpers/responsive_layout_widget.dart';
import 'package:dashboard/app/shared/widgets/large_screen.dart';
import 'package:dashboard/app/shared/widgets/small_screen.dart';
import 'package:dashboard/app/shared/widgets/top_navigation_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationAppBar(context, scaffoldKey),
        drawer: Drawer(),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          mediumScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
