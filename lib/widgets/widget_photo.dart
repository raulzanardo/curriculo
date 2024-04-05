import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries.map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
}

final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'raulzanardo@gmail.com',
  query: encodeQueryParameters(<String, String>{
    'subject': 'Olá!',
  }),
);

class WidgetPhoto extends StatelessWidget {
  const WidgetPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    //      alignment: MediaQuery.of(context).size.width > 700 ? Alignment.topLeft : Alignment.center,
    return Column(
      crossAxisAlignment: MediaQuery.of(context).size.width > 800 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/photo.png'),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        const SelectableText(
          'Raul Zanardo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              launchUrl(emailLaunchUri);
            },
            child: const SelectableText(
              'raulzanardo@gmail.com',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
