import 'package:dashboard/app/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/modules/home/home_page.dart';
import 'app/modules/menu/menu_controller.dart';
import 'app/modules/navigation/navigation_controller.dart';
import 'app/modules/routes/routes.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: authenticationPageRoute,
      unknownRoute: GetPage(
          name: '/not-found',
          page: () => SiteLayout(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(
            name: rootRoute,
            page: () {
              return SiteLayout();
            }),
        GetPage(name: authenticationPageRoute, page: () => SiteLayout()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
    );
  }
}
