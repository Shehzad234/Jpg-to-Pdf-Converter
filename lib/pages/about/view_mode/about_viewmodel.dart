import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutViewModel extends ChangeNotifier {
  contactUs() => launchUrl(
      Uri.parse("mailto:betabytetechnology@gmail.com?subject=&body="));

  fbpage() => launchUrl(Uri.parse("https://www.facebook.com/betabytetech/"),
      mode: LaunchMode.externalApplication);
}
