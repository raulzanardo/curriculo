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
            Row(

              children: [
                Icon(Icons.accessibility_new_sharp),
                Text('Currículo'),
                SizedBox(width: 20.0),
                Icon(Icons.abc),
                SizedBox(width: 20.0),
                Icon(Icons.access_time_rounded),
                SizedBox(width: 20.0),
                Icon(Icons.account_tree_sharp),

              ],

            ),


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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Wrap(
          ///Foto e text (1 e 2)
          //alignment: WrapAlignment.center,
          children: [
            WidgetPhoto(),
            WidgetPhoto(),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
