import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:laramin/app/layouts/admin_layout.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdminLayout(
        body: Center(
          child: Text('Dashboard'),
        ),
      ),
    );
  }
}
