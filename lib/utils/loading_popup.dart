import 'package:flutter/material.dart';

loadingPopup(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CircularProgressIndicator(),
              ],
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Converting..."),
              ],
            ),
          ));
}
