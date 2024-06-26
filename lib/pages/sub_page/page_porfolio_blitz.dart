import 'package:curriculo/widgets/widget_text_box.dart';
import 'package:flutter/material.dart';

class PagePortfolioBlitz extends StatefulWidget {
  String title;
  String image;

  PagePortfolioBlitz({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  State<PagePortfolioBlitz> createState() => _PagePortfolioBlitzState();
}

class _PagePortfolioBlitzState extends State<PagePortfolioBlitz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blitz'),
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.navigate_before),
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: 700,
            child: Column(
              children: [
                Hero(
                  tag: widget.title,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(widget.image),
                      ),
                    ),
                  ),
                ),
                WidgetTextBox('Blitz',
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor diam, accumsan sed lorem non, tristique venenatis lectus. Nulla tincidunt et libero sit amet porta. Aenean tristique dolor et sapien tristique, eu molestie sapien dictum. Quisque eleifend lorem eu ex ornare dignissim. Donec augue felis, aliquet eleifend consectetur ac, fringilla sit amet odio. Sed eu purus sem. Nulla nec sagittis tortor, lacinia ornare lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris efficitur felis quis egestas maximus. Nullam varius libero non justo sodales, a feugiat odio euismod. Nullam pulvinar quam molestie, ornare tortor at, molestie diam. Donec ornare et ante eget posuere.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
