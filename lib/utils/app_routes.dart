import 'package:flutter/material.dart';

import '../pages/about/view/about_view.dart';
import '../pages/converted/view/converted_view.dart';
import '../pages/home/view/home_view.dart';
import '../pages/permssions/view/permission_view.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  HomeView.path: (context) => const HomeView(),
  ConvertedView.path: (context) => const ConvertedView(),
  PermissionView.path: (context) => const PermissionView(),
  AboutView.path: (context) => const AboutView(),
};
