import 'package:dashboard/app/shared/helpers/chart_data.dart';
import 'package:dashboard/app/shared/models/response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Widget SplineChart(ResponseModel responseModel) {
  return SfCartesianChart(
    plotAreaBorderWidth: 0,
    primaryXAxis: CategoryAxis(
      majorGridLines: const MajorGridLines(width: 0),
    ),
    primaryYAxis: NumericAxis(
        axisLine: const AxisLine(width: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        majorTickLines: const MajorTickLines(size: 0)),
    title: ChartTitle(text: 'Comissões'),
    series: <ChartSeries>[
      SplineAreaSeries<ChartData, String>(
        markerSettings: const MarkerSettings(isVisible: true),
        name: 'Comissões',
        dataSource: ChartData.getCommissionChartData(responseModel),
        xValueMapper: (ChartData columnChartData, _) => columnChartData.x,
        yValueMapper: (ChartData columnChartData, _) => columnChartData.y,
        dataLabelSettings: DataLabelSettings(isVisible: true),
      ),
    ],
    tooltipBehavior: TooltipBehavior(enable: true),
  );
}
