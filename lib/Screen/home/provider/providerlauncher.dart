
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class launcherprovider extends ChangeNotifier{

  void launchertel(){
    Uri uri  =Uri.parse("tel: +91 1234567890");

    launchUrl(uri);
  }
  void launchermail(){
    Uri uri  =Uri.parse("mailto: nayakrohan9901@gmail.com");

    launchUrl(uri);
  }

  void linkLauncher()
  {
    Uri uri = Uri.parse('https://www.linkedin.com/in/rohan-nayak-861a522a9/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void instLauncher()
  {
    Uri uri = Uri.parse('https://www.instagram.com/_rohanx.01/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void teleLauncher()
  {
    Uri uri = Uri.parse('https://telegram.org/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
}