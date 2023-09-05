import '../../home/view/home_view.dart';
import '/pages/permssions/view/permission_view.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class IntroViewModel {
  static void moveToHome(context) {
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      if (await Permission.storage.isGranted ||
          await Permission.photos.isGranted) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(HomeView.path, (route) => false);
      } else {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(PermissionView.path, (route) => false);
      }
    });
  }
}
