import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import 'package:curriculo/localization/localization_home.i18n.dart';
import 'package:curriculo/providers/provider_theme.dart';
import 'package:curriculo/pages/page_about.dart';
import 'package:curriculo/pages/page_curriculum.dart';
import 'package:curriculo/pages/page_portfolio.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabBar(
                dividerHeight: 0,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                tabs: [
                  "Currículo".i18n,
                  "Portfólio".i18n,
                  "Sobre".i18n,
                ].map<Tab>((String menuItem) {
                  return Tab(
                    text: menuItem,
                  );
                }).toList(),
                onTap: (index) {},
              ),
              Row(
                children: [
                  IconButton(
                    tooltip: I18n.of(context).locale.languageCode.toUpperCase(),
                    onPressed: () {
                      if (I18n.of(context).locale == const Locale("pt", "BR")) {
                        I18n.of(context).locale = const Locale("en", "US");
                      } else {
                        I18n.of(context).locale = const Locale("pt", "BR");
                      }
                      setState(() {});
                    },

                    icon: const Icon(Icons.language),
                  ),
                  IconButton(
                    tooltip:  themeNotifier.getText(),

                    onPressed: () {
                      themeNotifier.toggleTheme();
                    },
                    icon: Icon(themeNotifier.getThemeIcon()),
                  )
                ],
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PageCurriculum(),
            PagePortfolio(),
            PageAbout(),
          ],
        ),
      ),
    );
  }
}
