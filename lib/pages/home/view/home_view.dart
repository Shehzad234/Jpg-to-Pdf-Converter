import 'dart:io';

import '/pages/about/view/about_view.dart';
import '/pages/home/view_model/home_viewmodel.dart';
import '/pages/home/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const path = "homepage";

  @override
  Widget build(BuildContext context) {
    HomeViewModel homeViewModel = Provider.of<HomeViewModel>(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Jpg to Pdf Converter"),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).pushNamed(AboutView.path),
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: homeViewModel.filePickedFlag
          ? Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: screenSize.height * 0.06),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.file(
                          fit: BoxFit.cover,
                          File(homeViewModel.jpgFilePath!),
                          height: 300,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Text(homeViewModel.jpgFileName ?? ""),
                    ),
                    const SizedBox(height: 100),
                    ElevatedButton(
                        onPressed: () => homeViewModel.convertjpgToPdf(context),
                        child: const Text("Convert to Pdf"))
                  ],
                ),
              ),
            )
          : const Center(
              child: Text("Import your file",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5))),
      floatingActionButton: FloatingActionButton(
        onPressed: () => homeViewModel.pickjpgFile(),
        child: const Icon(Icons.photo),
      ),
      drawer: const MyDrawer(),
    );
  }
}
