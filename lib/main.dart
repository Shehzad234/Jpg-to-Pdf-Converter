import 'utils/providers.dart';
import 'utils/theme_viewmode.dart';
import 'pages/intro/view/intro_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'utils/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: providers, child: const MyMaterialApp());
  }
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeViewModel themeViewModel = Provider.of<ThemeViewModel>(context);
    return MaterialApp(
        title: 'Jpg to Pdf Converter',
        theme: themeViewModel.darkMode
            ? ThemeData.dark()
            : ThemeData(
                primarySwatch: Colors.deepPurple,
              ),
        routes: appRoutes,
        home: const IntroView());
  }
}
