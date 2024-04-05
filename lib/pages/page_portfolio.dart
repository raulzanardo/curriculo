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

                WidgetPortfolioItem(),
                WidgetPortfolioItem(),
                WidgetPortfolioItem(),
                WidgetPortfolioItem(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
