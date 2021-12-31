import 'package:dashboard/app/repository/repository.dart';
import 'package:dashboard/app/shared/helpers/local_navigator.dart';
import 'package:flutter/material.dart';

import 'column_chart/column_chart.dart';
import 'spline_chart/spline_chart.dart';

class SmallScreen extends StatelessWidget {
  Repository respository = Repository();

  @override
  Widget build(BuildContext context) {
    return localNavigator();
  }
}
