import 'package:dashboard/app/repository/repository.dart';
import 'package:dashboard/app/shared/widgets/column_chart.dart';
import 'package:dashboard/app/shared/widgets/funnel_chart.dart';
import 'package:dashboard/app/shared/widgets/spline_chart.dart';
import 'package:dashboard/app/shared/widgets/stacked_chart.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Repository respository = Repository();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        controller: ScrollController(),
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                          height: 550,
                          child: ColumnChart(respository.getResponseModel()))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                          height: 550,
                          child: SplineChart(respository.getResponseModel()))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                          height: 550,
                          child: FunnelChart(respository.getResponseModel()))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          child: StackedChart(respository.getResponseModel()))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
