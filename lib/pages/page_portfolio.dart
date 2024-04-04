import 'package:flutter/material.dart';

class PagePortfolio extends StatefulWidget {
  const PagePortfolio({super.key});

  @override
  State<PagePortfolio> createState() => _PagePortfolioState();
}

class _PagePortfolioState extends State<PagePortfolio> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Portfólio'),
    );
  }
}
