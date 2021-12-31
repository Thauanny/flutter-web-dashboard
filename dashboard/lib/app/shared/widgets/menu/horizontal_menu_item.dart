import 'package:dashboard/app/modules/menu/menu_controller_instance.dart';
import 'package:dashboard/app/shared/constants/style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const HorizontalMenuItem({Key key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          //Hover effect
          color: menuController.isHovering(itemName)
              ? lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              _sideBarMenu(itemName),
              Padding(
                padding: const EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),
              _itemName(itemName)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _sideBarMenu(String itemName) => Visibility(
      visible: menuController.isHovering(itemName) ||
          menuController.isActive(itemName),
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: Container(
        width: 6,
        height: 40,
        color: dark,
      ),
    );

Widget _itemName(String itemName) => !menuController.isActive(itemName)
    ? Flexible(
        child: CustomText(
          text: itemName,
          color: menuController.isHovering(itemName) ? dark : lightGrey,
          size: 16,
          weight: FontWeight.normal,
        ),
      )
    : Flexible(
        child: CustomText(
          text: itemName,
          color: dark,
          size: 18,
          weight: FontWeight.bold,
        ),
      );
