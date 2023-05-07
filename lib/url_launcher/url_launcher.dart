import 'package:flutter/material.dart';
import 'package:my_flutter_book/z_other/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher extends StatelessWidget {
  const UrlLauncher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Url Launcher'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: customButton(
            onPressed: () async {
              final url = Uri.parse('https://google.com');
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              }
            },
          ),
        ),
      ),
    );
  }
}

// Put this line in androidManifest.xml for run android 11++
// <queries>
// <!-- If your app checks for SMS support -->
// <intent>
// <action android:name="android.intent.action.VIEW" />
// <data android:scheme="http" />
// </intent>
// <!-- If your app checks for call support -->
// <intent>
// <action android:name="android.intent.action.VIEW" />
// <data android:scheme="https" />
// </intent>
// </queries>
