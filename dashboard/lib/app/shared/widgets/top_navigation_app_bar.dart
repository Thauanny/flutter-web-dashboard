import 'package:dashboard/app/shared/constants/style.dart';
import 'package:dashboard/app/shared/helpers/responsive_layout_widget.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: _logo(context, key),
      title: Container(
        child: Row(
          children: [
            _logoName(context),
            Expanded(child: Container()),
            IconButton(
              icon: Icon(
                Icons.settings,
                color: dark,
              ),
              onPressed: () {},
            ),
            _notification(),
            Container(
              width: 1,
              height: 22,
              color: lightGrey,
            ),
            SizedBox(
              width: 24,
            ),
            CustomText(
              size: 16,
              weight: FontWeight.normal,
              text: "Thauanny",
              color: lightGrey,
            ),
            SizedBox(
              width: 16,
            ),
            profilePhotoSpace()
          ],
        ),
      ),
      iconTheme: IconThemeData(color: dark),
      elevation: 2,
      backgroundColor: light,
    );

Widget _notificationAlert() => Positioned(
      top: 7,
      right: 7,
      child: Container(
        width: 12,
        height: 12,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: active,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: light, width: 2)),
      ),
    );

Widget _notification() => Stack(
      children: [
        IconButton(
            icon: Icon(
              Icons.notifications,
              color: dark.withOpacity(.7),
            ),
            onPressed: () {}),
        _notificationAlert()
      ],
    );

Widget profilePhotoSpace() => Container(
      decoration: BoxDecoration(
          color: active.withOpacity(.5),
          borderRadius: BorderRadius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.all(2),
        child: CircleAvatar(
          backgroundColor: light,
          child: Icon(
            Icons.person_outline,
            color: dark,
          ),
        ),
      ),
    );

Widget _logoName(BuildContext context) => Visibility(
      visible: !ResponsiveWidget.isSmallScreen(context),
      child: CustomText(
        text: "Dash",
        color: lightGrey,
        size: 20,
        weight: FontWeight.bold,
      ),
    );

Widget _logo(BuildContext context, GlobalKey<ScaffoldState> key) =>
    !ResponsiveWidget.isSmallScreen(context)
        ? Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Image.asset(
                  "assets/icons/logo.png",
                  width: 28,
                ),
              ),
            ],
          )
        : IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              key.currentState?.openDrawer();
            },
          );
