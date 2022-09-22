import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri facebook_url =
    Uri.parse('https://web.facebook.com/www.citycenter.jo/?_rdc=1&_rdr');

final Uri website_url = Uri.parse('https://citycenter.jo/');

final Uri instagram_url =
    Uri.parse('https://www.instagram.com/citycentercomputers/?hl=en');

Future<void> facebookFunction() async {
  if (!await launchUrl(facebook_url)) {
    throw 'Could not launch $facebook_url';
  }
}

Future<void> websiteFunction() async {
  if (!await launchUrl(website_url)) {
    throw 'Could not launch $website_url';
  }
}

Future<void> instagramFunction() async {
  if (!await launchUrl(instagram_url)) {
    throw 'Could not launch $instagram_url';
  }
}

class urlClass extends StatelessWidget {
  urlClass(
      {required this.websiteName,
      required this.websiteSubtitle,
      required this.websiteIcon,
      required this.myFunction});
  String websiteName;
  String websiteSubtitle;
  IconData websiteIcon;
  Function() myFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myFunction,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
              Colors.white,
              Color.fromARGB(255, 86, 77, 167),
            ],
            end: Alignment.bottomRight,
            begin: Alignment.topLeft,
          ),
        ),
        child: ListTile(
          title: Text("$websiteName"),
          subtitle: Text("$websiteSubtitle"),
          leading: Icon(websiteIcon),
        ),
      ),
    );
  }
}
