import '/pages/about/view/about_view.dart';
import '/pages/about/view_mode/about_viewmodel.dart';
import '/utils/theme_viewmode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeViewModel themeViewModel = Provider.of<ThemeViewModel>(context);
    return Drawer(
        child: ListView(children: [
      Container(
        margin: const EdgeInsets.all(5),
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
                image: AssetImage("assets/Capture.PNG"), fit: BoxFit.fill)),
      ),
      const Divider(
        thickness: 5,
      ),
      Card(
          child: ListTile(
        title: Text(themeViewModel.darkMode ? "Dark Mode" : "Light Mode"),
        trailing: Switch(
            value: themeViewModel.darkMode,
            onChanged: (value) => themeViewModel.darkModeChanger()),
      )),
      Card(
        child: ListTile(
          onTap: () => context.read<AboutViewModel>().contactUs(),
          title: const Text("Feedback"),
          trailing: const Icon(Icons.message_outlined),
        ),
      ),
      Card(
        child: ListTile(
          title: const Text("About"),
          onTap: () => Navigator.of(context).pushNamed(AboutView.path),
          trailing: const Icon(Icons.info_outline),
        ),
      ),
    ]));
  }
}
