import 'package:dashboard/app/modules/menu/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() {
  Get.put(MenuController());
  return runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
