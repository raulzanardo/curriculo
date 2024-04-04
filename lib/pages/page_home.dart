import 'package:curriculo/pages/page_about.dart';
import 'package:curriculo/pages/page_curriculum.dart';
import 'package:curriculo/pages/page_portfolio.dart';
import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_extension.dart';

import '../main.dart';

const List<String> menuList = [
  "Currículo",
  "Portfólio",
  "Sobre",
];

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {

  @override
  Widget build(BuildContext context) {
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
                tabs: menuList.map<Tab>((String menuItem) {
                  return Tab(
                    text: menuItem,
                  );
                }).toList(),
                onTap: (index) {},
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      if (I18n.of(context).locale.toString() == 'pt_BR') {
                        I18n.of(context).locale = const Locale("en", "US");
                      } else {
                        I18n.of(context).locale = const Locale("pt", "BR");
                      }
                      setState(() {});
                    },
                    //TODO melhorar o icone de idioma
                    icon: const Icon(Icons.language),
                  ),
                  //TODO criar rotina de alteraçao de tema (Light, Dark, dinamic)
                  IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(Icons.dark_mode),
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
