import 'package:curriculo/widgets/widget_portfolio_item.dart';
import 'package:flutter/material.dart';

class PagePortfolio extends StatefulWidget {
  const PagePortfolio({super.key});

  @override
  State<PagePortfolio> createState() => _PagePortfolioState();
}

class _PagePortfolioState extends State<PagePortfolio> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: 700,
          child: Align(

            alignment: Alignment.topCenter,
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              runAlignment: WrapAlignment.start,
              children: [
                WidgetPortfolioItem(
                    image: 'assets/images/photo.png',
                    title: 'Lorem Ipsum',
                    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor diam, accumsan sed lorem non, tristique venenatis lectus. Nulla tincidunt et libero sit amet porta. Aenean tristique dolor et sapien tristique, eu molestie sapien dictum'),
                WidgetPortfolioItem(
                    image: 'assets/images/photo.png',
                    title: 'Lorem Ipsum',
                    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor diam, accumsan sed lorem non, tristique venenatis lectus. Nulla tincidunt et libero sit amet porta. Aenean tristique dolor et sapien tristique, eu molestie sapien dictum'),
                WidgetPortfolioItem(
                    image: 'assets/images/photo.png',
                    title: 'Lorem Ipsum',
                    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor diam, accumsan sed lorem non, tristique venenatis lectus. Nulla tincidunt et libero sit amet porta. Aenean tristique dolor et sapien tristique, eu molestie sapien dictum'),
                WidgetPortfolioItem(
                    image: 'assets/images/photo.png',
                    title: 'Lorem Ipsum',
                    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor diam, accumsan sed lorem non, tristique venenatis lectus. Nulla tincidunt et libero sit amet porta. Aenean tristique dolor et sapien tristique, eu molestie sapien dictum'),
                WidgetPortfolioItem(
                    image: 'assets/images/photo.png',
                    title: 'Lorem Ipsum',
                    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor diam, accumsan sed lorem non, tristique venenatis lectus. Nulla tincidunt et libero sit amet porta. Aenean tristique dolor et sapien tristique, eu molestie sapien dictum'),
                WidgetPortfolioItem(
                    image: 'assets/images/photo.png',
                    title: 'Lorem Ipsum',
                    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor diam, accumsan sed lorem non, tristique venenatis lectus. Nulla tincidunt et libero sit amet porta. Aenean tristique dolor et sapien tristique, eu molestie sapien dictum'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
