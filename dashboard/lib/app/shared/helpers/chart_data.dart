import 'package:dashboard/app/shared/models/response_model.dart';
import 'package:dashboard/app/shared/utils/format_date_to_month_day_year.dart';

class ChartData {
  String? x;
  double? y;
  double? confirmedCommission;
  double? waitingApprovalCommission;
  double? deniedContracts;
  double? voidedCommission;
  String? commissionTotal;

  ChartData(
      {this.x,
      this.y,
      this.confirmedCommission,
      this.waitingApprovalCommission,
      this.deniedContracts,
      this.voidedCommission,
      this.commissionTotal});

  static dynamic getSplineDate() {
    List<ChartData> columnData = <ChartData>[
      ChartData(x: 'BM', y: 200),
      ChartData(x: 'Audi', y: 300),
      ChartData(x: 'Honda', y: 50),
      ChartData(x: 'Ferrari', y: 100)
    ];

    return columnData;
  }

  static dynamic getCommissionChartData(ResponseModel responseModel) {
    var commissionChartData = responseModel.commissionChartData.values;

    List<ChartData> columnData = <ChartData>[];
    for (int i = 0; i < commissionChartData.first.length; i++) {
      columnData.add(
        ChartData(
          x: dateFormatToDayMonthYear(
              commissionChartData.first.elementAt(i).toString()),
          y: double.parse(
            commissionChartData.last.elementAt(i).toString(),
          ),
        ),
      );
    }

    return columnData;
  }

  static dynamic getClicksAndSignUpChartDataClicks(
      ResponseModel responseModel) {
    var clicksAndSignUpChartData =
        responseModel.clicksAndSignUpChartData.values;

    List<ChartData> columnData = <ChartData>[];
    for (int i = 0; i < clicksAndSignUpChartData.first.length; i++) {
      columnData.add(
        ChartData(
          x: dateFormatToDayMonthYear(
              clicksAndSignUpChartData.first.elementAt(i).toString()),
          y: double.parse(
            clicksAndSignUpChartData.elementAt(1).elementAt(i).toString(),
          ),
        ),
      );
    }

    return columnData;
  }

  static dynamic getClicksAndSignUpChartDataApproved(
      ResponseModel responseModel) {
    var clicksAndSignUpChartData =
        responseModel.clicksAndSignUpChartData.values;

    List<ChartData> columnData = <ChartData>[];
    for (int i = 0; i < clicksAndSignUpChartData.first.length; i++) {
      columnData.add(
        ChartData(
          x: dateFormatToDayMonthYear(
              clicksAndSignUpChartData.first.elementAt(i).toString()),
          y: double.parse(
            clicksAndSignUpChartData.last.elementAt(i).toString(),
          ),
        ),
      );
    }

    return columnData;
  }

  static dynamic getComissionStackedChartDataConfirmedCommission(
      ResponseModel responseModel) {
    List<ChartData> columnData = <ChartData>[
      ChartData(
        commissionTotal: '',
        confirmedCommission: double.parse(
            ((double.parse(responseModel.confirmedCommission) * 100) /
                    (double.parse(responseModel.commissionTotal)))
                .toStringAsFixed(2)),
        deniedContracts: double.parse(
            ((double.parse(responseModel.deniedContracts) * 100) /
                    (double.parse(responseModel.commissionTotal)))
                .toStringAsFixed(2)),
        voidedCommission: double.parse(
            ((double.parse(responseModel.voidedCommission) * 100) /
                    (double.parse(responseModel.commissionTotal)))
                .toStringAsFixed(2)),
        waitingApprovalCommission: double.parse(
            ((double.parse(responseModel.waitingApprovalCommission) * 100) /
                    (double.parse(responseModel.commissionTotal)))
                .toStringAsFixed(2)),
      ),
    ];

    return columnData;
  }
}
