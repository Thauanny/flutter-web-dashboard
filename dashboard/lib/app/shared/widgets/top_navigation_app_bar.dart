import 'package:dashboard/app/shared/constants/style.dart';
import 'package:dashboard/app/shared/utils/screen_size_functions.dart';
import 'package:flutter/material.dart';

AppBar topNavigationAppBar(
    BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  print(!isSmallScreen(context: context));
  return AppBar(
    elevation: 0,
    leading: isLargeScreen(context: context) || isMediumScreen(context: context)
        ? Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 14),
                child: Image.asset(
                  'assets/icons/logo.png',
                  width: 28,
                ),
              ),
            ],
          )
        : IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.menu,
            ),
          ),
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _leftSide(),
        _rigthSide(),
      ],
    ),
    iconTheme: IconThemeData(
      color: secondGrey,
    ),
    backgroundColor: Colors.white,
  );
}

Widget _customText(
        {required String text,
        double? size,
        Color? color,
        FontWeight? weight}) =>
    Text(
      text,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: size ?? 16,
          fontWeight: weight ?? FontWeight.normal),
    );

Widget _alarmIcon() => Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
          color: secondGrey.withOpacity(0.7),
        ),
        Positioned(
            top: 7,
            right: 7,
            child: Container(
              width: 12,
              height: 12,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: primaryActive,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 2)),
            ))
      ],
    );

Widget _circularAvatar() => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.all(2),
      child: CircleAvatar(
        backgroundColor: primaryWhite,
        child: Icon(
          Icons.person_outline,
          color: secondGrey,
        ),
      ),
    );

Widget _leftSide() => Container(
      child: _customText(
          text: "DashBoard",
          color: primaryGrey,
          size: 20,
          weight: FontWeight.bold),
    );

Widget _rigthSide() => Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: secondGrey.withOpacity(0.7),
          ),
        ),
        _alarmIcon(),
        Container(
          width: 1,
          height: 22,
          color: primaryGrey,
        ),
        SizedBox(
          width: 24,
        ),
        _customText(text: "Thauanny Ramos", color: primaryGrey),
        SizedBox(
          width: 16,
        ),
        _circularAvatar()
      ],
    );
