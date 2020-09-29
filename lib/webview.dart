import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webview extends StatelessWidget {
int temp;
webview(this.temp);
  @override
  Widget build(BuildContext context) {

   //   _launchURL(url);
   //const String url1 = url;
  // url1=url;
//final String u = url;
  if(temp==1) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 17.0),
          child: const WebView(
            initialUrl: "https://github.com/irohansharma",
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),

    );
  }
  if(temp==2) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 17.0),
          child: const WebView(
            initialUrl: "https://www.instagram.com/rohan02_/?hl=en",
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),

    );
  }
  if(temp==3) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 17.0),
          child: const WebView(
            initialUrl: "https://www.facebook.com/rohan0202",
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),

    );
  }



//      );
  }
}



/*_launchURL(String url) async {
 // const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
*/