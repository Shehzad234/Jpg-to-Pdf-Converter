import 'package:flutter/material.dart';
import '../view_model/intro_viewmodel.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    IntroViewModel.moveToHome(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/splash.gif"), fit: BoxFit.cover)),
    );
  }
}
