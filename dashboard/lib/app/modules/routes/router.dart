import 'package:dashboard/app/modules/home/home_page.dart';
import 'package:dashboard/app/modules/routes/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(SiteLayout());
    case driversPageRoute:
      return _getPageRoute(SiteLayout());
    case clientsPageRoute:
      return _getPageRoute(SiteLayout());
    default:
      return _getPageRoute(SiteLayout());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
