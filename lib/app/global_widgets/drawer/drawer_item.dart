import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:laramin/app/modules/dashboard/controllers/dashboard_controller.dart';

class DrawerItem extends GetView<DashboardController> {
  const DrawerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      shadowColor: Colors.black,
      elevation: 6,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              controller.hola.value = !controller.hola.value;
            },
          ),
          // visibility the
          Obx(
            () => AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              height: controller.hola.value ? 100 : 0,
              child: Container(
                color: Colors.red,
                child: ListTile(
                  title: const Text('Item 3'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: const Text('Item 2'),
              onTap: () {
                controller.hola.value = !controller.hola.value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
