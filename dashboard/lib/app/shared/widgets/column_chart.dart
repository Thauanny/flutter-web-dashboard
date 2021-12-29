import 'package:dashboard/app/shared/helpers/chart_data.dart';
import 'package:dashboard/app/shared/models/response_model.dart';

import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Widget ColumnChart(ResponseModel responseModel) {
  return SfCartesianChart(
    primaryXAxis: CategoryAxis(
      title: AxisTitle(text: 'Datas'),
    ),
    primaryYAxis: NumericAxis(
      title: AxisTitle(text: 'Valores'),
    ),
    title: ChartTitle(text: 'Clicks X Approved'),
    legend: Legend(isVisible: true, alignment: ChartAlignment.near),
    series: <ChartSeries>[
      ColumnSeries<ChartData, String>(
        markerSettings: const MarkerSettings(isVisible: true),
        name: 'Clicks',
        dataSource: ChartData.getClicksAndSignUpChartDataClicks(responseModel),
        xValueMapper: (ChartData ChartData, _) => ChartData.x,
        yValueMapper: (ChartData ChartData, _) => ChartData.y,
        dataLabelSettings: DataLabelSettings(isVisible: true),
      ),
      ColumnSeries<ChartData, String>(
        markerSettings: const MarkerSettings(isVisible: true),
        name: 'Approved',
        dataSource:
            ChartData.getClicksAndSignUpChartDataApproved(responseModel),
        xValueMapper: (ChartData ChartData, _) => ChartData.x,
        yValueMapper: (ChartData ChartData, _) => ChartData.y,
        dataLabelSettings: DataLabelSettings(isVisible: true),
      )
    ],
    tooltipBehavior: TooltipBehavior(enable: true),
  );
}
