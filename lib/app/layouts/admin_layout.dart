import 'package:flutter/material.dart';
import 'package:laramin/app/global_widgets/drawer/drawer_item.dart';

class AdminLayout extends StatelessWidget {
  final Widget body;
  const AdminLayout({
    Key? key,
    this.body = const SizedBox(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: DrawerItem(),
        ),
        Expanded(
          flex: 8,
          child: body,
        ),
      ],
    );
  }
}
