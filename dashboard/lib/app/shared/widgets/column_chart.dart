import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Widget ColumnChart() {
  return SfCartesianChart(
    primaryXAxis: CategoryAxis(
      title: AxisTitle(text: 'Marcas'),
    ),
    primaryYAxis: NumericAxis(
      title: AxisTitle(text: 'Valores'),
      //labelFormat: '{value}%',
    ),
    title: ChartTitle(text: 'Grafico Barras'),
    legend: Legend(isVisible: true, alignment: ChartAlignment.near),
    series: <ChartSeries>[
      ColumnSeries<ColumnChartData, String>(
        markerSettings: const MarkerSettings(isVisible: true),
        name: 'Carros',
        dataSource: ColumnChartData.getColumnDate(),
        xValueMapper: (ColumnChartData columnChartData, _) => columnChartData.x,
        yValueMapper: (ColumnChartData columnChartData, _) => columnChartData.y,
        dataLabelSettings: DataLabelSettings(isVisible: true),
      )
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
      ColumnChartData(x: 'Honda', y: 40),
      ColumnChartData(x: 'Ferrari', y: 10)
    ];

    return columnData;
  }
}
