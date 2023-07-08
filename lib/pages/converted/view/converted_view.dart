import '/pages/converted/view_model/converted_viewmodel.dart';
import '/pages/converted/widgets/function_button.dart';
import '/pages/home/view_model/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConvertedView extends StatelessWidget {
  static const path = "convertedview";

  const ConvertedView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel homeViewModel = Provider.of<HomeViewModel>(context);
    ConvertedViewModel convertedViewModel =
        Provider.of<ConvertedViewModel>(context);
    Size screenSize = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async {
        convertedViewModel.savedAnimationFlagFalse();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Sucessfully Converted"), centerTitle: true),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.04,
                  right: screenSize.width * 0.04),
              child: Column(children: [
                const SizedBox(height: 5),
                AnimatedContainer(
                    height: convertedViewModel.savedAnimationFlag ? 60 : 0,
                    duration: const Duration(seconds: 1),
                    child: Column(
                      children: [
                        const Text("File Path",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline)),
                        const SizedBox(height: 5),
                        Text(convertedViewModel.savedAnimationFlag
                            ? "${convertedViewModel.pdfPath}"
                            : ""),
                      ],
                    )),
                SizedBox(height: screenSize.height * 0.1),
                Column(
                  children: [
                    Image.asset(
                      "assets/pdf.png",
                      height: 300,
                    ),
                    const SizedBox(height: 10),
                    Text(homeViewModel.pdfFileName!),
                    Padding(
                      padding: EdgeInsets.only(top: screenSize.height * 0.1),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FunctionButton(
                                icon: Icons.share_outlined,
                                name: "Share",
                                onTap: () => convertedViewModel
                                    .sharePdfFile(homeViewModel.pdfFilepath!)),
                            FunctionButton(
                                icon: Icons.play_arrow_outlined,
                                name: "Open",
                                onTap: () => convertedViewModel
                                    .openPdfFile(homeViewModel.pdfFilepath!)),
                            FunctionButton(
                                icon: Icons.download_outlined,
                                name: "Download",
                                onTap: () => convertedViewModel
                                    .savePdfFile(homeViewModel.pdfFilepath!)),
                          ]),
                    )
                  ],
                ),
              ])),
        ),
      ),
    );
  }
}
