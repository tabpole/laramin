import 'package:flutter/material.dart';
import 'package:laramin/app/global_widgets/drawer/drawer_item.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerItem(),
    );
  }
}
