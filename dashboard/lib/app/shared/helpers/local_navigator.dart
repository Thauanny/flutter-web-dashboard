import 'package:dashboard/app/modules/navigation/navigator_controler_instance.dart';
import 'package:dashboard/app/modules/routes/router.dart';
import 'package:dashboard/app/modules/routes/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      initialRoute: overviewPageRoute,
      onGenerateRoute: generateRoute,
    );
