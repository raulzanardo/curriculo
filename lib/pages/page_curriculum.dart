import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/widget_photo.dart';

class PageCurriculum extends StatefulWidget {
  const PageCurriculum({super.key});

  @override
  State<PageCurriculum> createState() => _PageCurriculumState();
}

class _PageCurriculumState extends State<PageCurriculum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Curriculum'),
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
        padding: const EdgeInsets.all(20),
        child: Wrap(
          ///Foto e text (1 e 2)
          //alignment: WrapAlignment.center,

          children: [
            const WidgetPhoto(),
            Container(
              padding: const EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width > 700 ? MediaQuery.of(context).size.width - 250 : Size.infinite.width,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Objetivo',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.justify,
                    'Busco oportunidades como desenvolvedor de aplicativos móveis, com foco na plataforma Flutter, visando contribuir com minha experiência em desenvolvimento de software, conhecimentos de UX e habilidades técnicas para criar soluções móveis inovadoras.',
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Resumo Profissional',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.justify,
                    'Tenho experiência em desenvolvimento de aplicativos móveis para Android e iOS utilizando Flutter e Dart. Experiência em design de interface de usuário, arquitetura de aplicativos móveis e lançamento de aplicativos na Google Play Store e na App Store da Apple. Habilidades em experiência de usuário, programação orientada a objetos e resolução de problemas',
                  ),
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
