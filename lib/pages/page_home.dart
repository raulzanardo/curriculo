import 'package:flutter/material.dart';

import 'package:curriculo/pages/page_home.dart';
import 'package:curriculo/widgets/widget_photo.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Home'),
            Row(
              children: [
                //TODO Adicionar i18n
                //TODO Trocar icone do idioma
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.language),
                ),
                //TODO criar rotina de alteraçao de tema (Light, Dark, dinamic)
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.dark_mode),
                )
              ],
            )
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Text('home'),
      ),
    );
  }
}
