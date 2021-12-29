import 'package:dashboard/app/repository/repository.dart';
import 'package:flutter/material.dart';

import 'column_chart.dart';
import 'spline_chart.dart';

class SmallScreen extends StatelessWidget {
  Repository respository = Repository();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        controller: ScrollController(),
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                height: 550,
                                child:
                                    ColumnChart(respository.getResponseModel()))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                                height: 550,
                                child:
                                    SplineChart(respository.getResponseModel()))
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
