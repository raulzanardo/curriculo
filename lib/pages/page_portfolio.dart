import 'package:curriculo/pages/sub_page/page_porfolio_bingo.dart';
import 'package:curriculo/pages/sub_page/page_porfolio_blitz.dart';
import 'package:curriculo/pages/sub_page/page_porfolio_copal.dart';
import 'package:curriculo/pages/sub_page/page_porfolio_item.dart';
import 'package:curriculo/pages/sub_page/page_porfolio_rock.dart';
import 'package:curriculo/widgets/widget_portfolio_item.dart';
import 'package:flutter/material.dart';

/*

https://play.google.com/store/apps/details?id=com.pensenova.copalv2

*/

//TODO user hero nos items : https://api.flutter.dev/flutter/widgets/Hero-class.html

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
                  image: 'assets/images/portfolio/copal_logo.png',
                  title: 'Copal',
                  body: 'Aplicativo utilizado para parametrizar e controlar robôs de Paletização',
                  portfolioPage: PagePortfolioCopal(
                    title: 'Copal',
                    image: 'assets/images/portfolio/copal_logo.png',
                  ),
                ),
                WidgetPortfolioItem(
                  image: 'assets/images/portfolio/blitz_logo.png',
                  title: 'Blitz',
                  body: 'Aplicativo para contagem de pontos no jogo de cartas Dutch Blitz',
                  portfolioPage: PagePortfolioBlitz(
                    title: 'Blitz',
                    image: 'assets/images/portfolio/blitz_logo.png',
                  ),
                ),
                WidgetPortfolioItem(
                  image: 'assets/images/portfolio/rock_logo.png',
                  title: 'Rock Venue',
                  body: 'Estudo de caso de aplicativo para venda de ingressos de uma banda de rock',
                  portfolioPage: PagePortfolioRock(
                    title: 'Rock Venue',
                    image: 'assets/images/portfolio/rock_logo.png',
                  ),
                ),
                WidgetPortfolioItem(
                  image: 'assets/images/portfolio/bingo_logo.png',
                  title: 'Bing-o',
                  body: 'Jogo de bingo com frases no lugar dos números',
                  portfolioPage: PagePortfolioBingo(
                    title: 'Bing-o',
                    image: 'assets/images/portfolio/bingo_logo.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
