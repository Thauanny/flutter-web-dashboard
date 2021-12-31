import 'package:dashboard/app/repository/repository.dart';
import 'package:dashboard/app/shared/widgets/stacked_chart/stacked_chart.dart';
import 'package:flutter/material.dart';

class StackedChartPage extends StatelessWidget {
  const StackedChartPage({Key key}) : super(key: key);

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
