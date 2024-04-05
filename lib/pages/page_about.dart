import 'package:flutter/material.dart';

import '../widgets/widget_text_box.dart';

class PageAbout extends StatefulWidget {
  const PageAbout({super.key});

  @override
  State<PageAbout> createState() => _PageAboutState();
}

class _PageAboutState extends State<PageAbout> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: 700,
          child: WidgetTextBox('Lorem Ipsum',
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor diam, accumsan sed lorem non, tristique venenatis lectus. Nulla tincidunt et libero sit amet porta. Aenean tristique dolor et sapien tristique, eu molestie sapien dictum. Quisque eleifend lorem eu ex ornare dignissim. Donec augue felis, aliquet eleifend consectetur ac, fringilla sit amet odio. Sed eu purus sem. Nulla nec sagittis tortor, lacinia ornare lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris efficitur felis quis egestas maximus. Nullam varius libero non justo sodales, a feugiat odio euismod. Nullam pulvinar quam molestie, ornare tortor at, molestie diam. Donec ornare et ante eget posuere.'),
        ),
      ),
    );
  }
}
