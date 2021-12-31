import 'package:dashboard/app/modules/routes/routes.dart';
import 'package:dashboard/app/shared/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = columnChartPageDisplayName.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case columnChartPageDisplayName:
        return _customIcon(Icons.bar_chart_outlined, itemName);
      case splineChartPageDisplayName:
        return _customIcon(Icons.waves_rounded, itemName);
      case funnelChartPageDisplayName:
        return _customIcon(Icons.filter_alt_rounded, itemName);
      case stackedChartPageDisplayName:
        return _customIcon(Icons.stacked_bar_chart, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
