import 'package:dashboard/app/shared/constants/screen_size_const.dart';
import 'package:flutter/cupertino.dart';

bool isSmallScreen(
    {required BuildContext context, BoxConstraints? constraints}) {
  if (constraints == null) {
    return MediaQuery.of(context).size.width < smallScreenSize;
  }

  return constraints.maxWidth < smallScreenSize;
}

bool isLargeScreen(
    {required BuildContext context, BoxConstraints? constraints}) {
  if (constraints == null)
    return MediaQuery.of(context).size.width >= largeScreenSize;
  return constraints.maxWidth >= largeScreenSize;
}

bool isMediumScreen(
    {required BuildContext context, BoxConstraints? constraints}) {
  if (constraints == null)
    return MediaQuery.of(context).size.width >= mediumScreenSize &&
        MediaQuery.of(context).size.width < largeScreenSize;
  return constraints.maxWidth >= mediumScreenSize &&
      constraints.maxWidth < largeScreenSize;
}
