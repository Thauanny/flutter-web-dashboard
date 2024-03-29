import 'package:dashboard/app/modules/menu/menu_controller_instance.dart';
import 'package:dashboard/app/modules/navigation/navigator_controler_instance.dart';
import 'package:dashboard/app/modules/routes/routes.dart';
import 'package:dashboard/app/shared/constants/style.dart';
import 'package:dashboard/app/shared/helpers/responsive_layout_widget.dart';
import 'package:dashboard/app/shared/widgets/menu/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custom_text/custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Card(
      elevation: 4,
      child: Container(
        color: light,
        child: ListView(
          children: [
            if (ResponsiveWidget.isSmallScreen(context))
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SizedBox(width: _width / 48),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Image.asset("assets/icons/logo.png"),
                      ),
                      Flexible(
                        child: CustomText(
                          text: "Dash",
                          size: 20,
                          weight: FontWeight.bold,
                          color: active,
                        ),
                      ),
                      SizedBox(width: _width / 48),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItemRoutes
                  .map((item) => SideMenuItem(
                      itemName: item.name,
                      onTap: () {
                        /* if (item.route == authenticationPageRoute) {
                          Get.offAllNamed(authenticationPageRoute);
                          menuController
                              .changeActiveItemTo(overviewPageDisplayName);
                        }*/
                        if (!menuController.isActive(item.name)) {
                          menuController.changeActiveItemTo(item.name);
                          if (ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                          navigationController.navigateTo(item.route);
                        }
                      }))
                  .toList(),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
