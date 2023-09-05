import '/pages/permssions/view_model/permission_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PermissionView extends StatelessWidget {
  static const path = "permission_view";
  const PermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: const Text("Jpg to Pdf Converter"),
          centerTitle: true,
          automaticallyImplyLeading: false),
      backgroundColor: const Color.fromARGB(223, 252, 229, 248),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(height: screenSize.height * 0.05),
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.height * 0.03),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/icon.jpg",
                      ),
                    )),
              ],
            ),
            Column(
              children: [
                const Text("Let's Convert your Jpg to Pdf",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, letterSpacing: 1.5)),
                const SizedBox(height: 10),
                Consumer<PermissionViewModel>(
                  builder: (context, value, child) => ElevatedButton(
                      onPressed: () => value.allowPermission(context: context),
                      child: const Text("Allow Permission")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
