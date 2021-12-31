import 'package:dashboard/app/shared/helpers/chart_data.dart';
import 'package:dashboard/app/shared/models/response_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Widget StackedChart(ResponseModel responseModel) {
  return SfCartesianChart(
    isTransposed: true,
    primaryXAxis: CategoryAxis(
      isVisible: false,
    ),
    primaryYAxis: NumericAxis(isVisible: false, labelFormat: '{value}%'),
    title: ChartTitle(
        text: 'Total de comissões: ${responseModel.commissionTotal}',
        alignment: ChartAlignment.near),
    legend: Legend(
        isVisible: true,
        alignment: ChartAlignment.center,
        position: LegendPosition.bottom,
        isResponsive: true),
    series: <ChartSeries>[
      StackedColumnSeries<ChartData, String>(
        legendItemText:
            'Confirmed Commission:  ${responseModel.confirmedCommission}',
        name: 'Confirmed Commission',
        dataSource: ChartData.getComissionStackedChartDataConfirmedCommission(
            responseModel),
        xValueMapper: (ChartData ChartData, _) => ChartData.commissionTotal,
        yValueMapper: (ChartData ChartData, _) => ChartData.confirmedCommission,
        dataLabelSettings: DataLabelSettings(
            isVisible: true, textStyle: TextStyle(color: Colors.white)),
      ),
      StackedColumnSeries<ChartData, String>(
        legendItemText: 'Voided Commission:  ${responseModel.voidedCommission}',
        name: 'Voided Commission',
        dataSource: ChartData.getComissionStackedChartDataConfirmedCommission(
            responseModel),
        xValueMapper: (ChartData ChartData, _) => ChartData.commissionTotal,
        yValueMapper: (ChartData ChartData, _) => ChartData.voidedCommission,
        dataLabelSettings: DataLabelSettings(
            isVisible: true, textStyle: TextStyle(color: Colors.white)),
      ),
      StackedColumnSeries<ChartData, String>(
        legendItemText: 'Denied Contracts:   ${responseModel.deniedContracts}',
        name: 'Denied Contracts',
        dataSource: ChartData.getComissionStackedChartDataConfirmedCommission(
            responseModel),
        xValueMapper: (ChartData ChartData, _) => ChartData.commissionTotal,
        yValueMapper: (ChartData ChartData, _) => ChartData.deniedContracts,
        dataLabelSettings: DataLabelSettings(
            isVisible: true, textStyle: TextStyle(color: Colors.white)),
      ),
      StackedColumnSeries<ChartData, String>(
        legendItemText:
            'Waiting Approval Commission:   ${responseModel.waitingApprovalCommission}',
        name: 'Waiting Approval Commission',
        dataSource: ChartData.getComissionStackedChartDataConfirmedCommission(
            responseModel),
        xValueMapper: (ChartData ChartData, _) => ChartData.commissionTotal,
        yValueMapper: (ChartData ChartData, _) =>
            ChartData.waitingApprovalCommission,
      )
    ],
    tooltipBehavior: TooltipBehavior(
        enable: true, textStyle: TextStyle(color: Colors.white)),
  );
}
