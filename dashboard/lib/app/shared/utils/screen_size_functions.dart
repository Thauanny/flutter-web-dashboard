import 'package:dashboard/app/shared/constants/screen_size_const.dart';
import 'package:flutter/cupertino.dart';

bool isSmallScreen(BuildContext context, BoxConstraints constraints) =>
    constraints.maxWidth <= smallScreenSize;

bool isLargeScreen(BuildContext context, BoxConstraints constraints) =>
    constraints.maxWidth >= largeScreenSize;

bool isMediumScreen(BuildContext context, BoxConstraints constraints) =>
    constraints.maxWidth >= mediumScreenSize &&
    constraints.maxWidth < largeScreenSize;
