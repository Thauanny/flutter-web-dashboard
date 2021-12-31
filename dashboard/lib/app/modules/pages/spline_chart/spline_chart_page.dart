import 'package:dashboard/app/repository/repository.dart';
import 'package:dashboard/app/shared/widgets/spline_chart/spline_chart.dart';
import 'package:flutter/material.dart';

class SplineColumnPage extends StatelessWidget {
  const SplineColumnPage({Key key}) : super(key: key);

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
                          child: SplineChart(respository.getResponseModel()))
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
