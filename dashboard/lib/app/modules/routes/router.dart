import 'package:dashboard/app/modules/pages/funnel_chart/funnel_chart_page.dart';
import 'package:dashboard/app/modules/pages/spline_chart/spline_chart_page.dart';
import 'package:dashboard/app/modules/pages/column_chart/column_chart_page.dart';
import 'package:dashboard/app/modules/pages/stacked_chart/stacked_chart_page.dart';
import 'package:dashboard/app/modules/routes/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case columnChartPageRoute:
      return _getPageRoute(ColumnChartPage());
    case splineChartPageRoute:
      return _getPageRoute(SplineColumnPage());
    case funnelChartPageRoute:
      return _getPageRoute(FunnelChartPage());
    default:
      return _getPageRoute(StackedChartPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
