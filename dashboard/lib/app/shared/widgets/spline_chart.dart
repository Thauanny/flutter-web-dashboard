import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Widget SplineChart() {
  return SfCartesianChart(
    plotAreaBorderWidth: 0,
    primaryXAxis: CategoryAxis(
      majorGridLines: const MajorGridLines(width: 0),
    ),
    primaryYAxis: NumericAxis(
        axisLine: const AxisLine(width: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        majorTickLines: const MajorTickLines(size: 0)),
    title: ChartTitle(text: 'Grafico de Colunas'),
    series: <ChartSeries>[
      SplineSeries<ColumnChartData, String>(
        markerSettings: const MarkerSettings(isVisible: true),
        dataSource: ColumnChartData.getColumnDate(),
        xValueMapper: (ColumnChartData columnChartData, _) => columnChartData.x,
        yValueMapper: (ColumnChartData columnChartData, _) => columnChartData.y,
        dataLabelSettings: DataLabelSettings(isVisible: true),
      ),
      SplineSeries<ColumnChartData, String>(
        markerSettings: const MarkerSettings(isVisible: true),
        dataSource: ColumnChartData.getSplineDate(),
        xValueMapper: (ColumnChartData columnChartData, _) => columnChartData.x,
        yValueMapper: (ColumnChartData columnChartData, _) => columnChartData.y,
        dataLabelSettings: DataLabelSettings(isVisible: true),
      ),
    ],
    tooltipBehavior: TooltipBehavior(enable: true),
  );
}

class ColumnChartData {
  String x;
  double y;

  ColumnChartData({required this.x, required this.y});

  static dynamic getColumnDate() {
    List<ColumnChartData> columnData = <ColumnChartData>[
      ColumnChartData(x: 'BM', y: 20),
      ColumnChartData(x: 'Audi', y: 30),
      ColumnChartData(x: 'Honda', y: 20),
      ColumnChartData(x: 'Ferrari', y: 10)
    ];

    return columnData;
  }

  static dynamic getSplineDate() {
    List<ColumnChartData> columnData = <ColumnChartData>[
      ColumnChartData(x: 'BM', y: 200),
      ColumnChartData(x: 'Audi', y: 300),
      ColumnChartData(x: 'Honda', y: 50),
      ColumnChartData(x: 'Ferrari', y: 100)
    ];

    return columnData;
  }
}
