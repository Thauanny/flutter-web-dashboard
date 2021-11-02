import 'package:dashboard/app/shared/helpers/responsives_layout.dart';
import 'package:dashboard/app/shared/widgets/large_screen.dart';
import 'package:dashboard/app/shared/widgets/small_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          mediumScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
