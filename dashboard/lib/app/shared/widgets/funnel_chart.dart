import 'package:dashboard/app/shared/helpers/chart_data.dart';
import 'package:dashboard/app/shared/models/response_model.dart';
import 'package:dashboard/app/shared/utils/format_date_to_month_day_year.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Widget FunnelChart(ResponseModel responseModel) {
  return SfFunnelChart(
    // palette: [
    //   Colors.yellowAccent,
    //   Colors.green,
    //   Colors.blueGrey,
    //   Colors.deepOrangeAccent,
    //   Colors.lightBlueAccent,
    //   Colors.tealAccent,
    //   Colors.indigoAccent,
    //   Colors.brown,
    //   Colors.purple,
    //   Colors.amber
    // ],
    title: ChartTitle(text: 'Funnel Comission'),
    legend: Legend(isVisible: true, alignment: ChartAlignment.near),
    series: FunnelSeries<ChartData, String>(
        dataSource: ChartData.getCommissionChartData(responseModel),
        xValueMapper: (ChartData data, _) => data.x as String,
        yValueMapper: (ChartData data, _) => data.y,
        gapRatio: 0.2,
        dataLabelSettings: const DataLabelSettings(isVisible: true)),
    tooltipBehavior: TooltipBehavior(enable: true),
  );
}
