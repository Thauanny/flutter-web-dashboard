import 'package:dashboard/app/shared/helpers/local_navigator.dart';
import 'package:flutter/material.dart';

import 'menu/side_menu.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: SideMenu()),
        Expanded(flex: 5, child: localNavigator()),
      ],
    );
  }
}
