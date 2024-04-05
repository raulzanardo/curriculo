import 'package:flutter/material.dart';

import '../widgets/widget_photo.dart';
import '../widgets/widget_text_box.dart';

import '../localization/localization_curriculum.i18n.dart';

//https://www.coderzheaven.com/2019/04/26/tabbedappbar-in-flutter-android-and-ios/

class PageCurriculum extends StatefulWidget {
  const PageCurriculum({super.key});

  @override
  State<PageCurriculum> createState() => _PageCurriculumState();
}

class _PageCurriculumState extends State<PageCurriculum> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                ///Foto e text (1 e 2)
                //alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width > 800) ? 200 : double.infinity,
                    child: const WidgetPhoto(),
                  ),
                  Container(
                    padding: (MediaQuery.of(context).size.width > 800) ? const EdgeInsets.fromLTRB(20.0, 0, 0, 20.0) : const EdgeInsets.all(0.0),
                    // width:  500 ,
                    width: (MediaQuery.of(context).size.width > 800) ? 500 : double.infinity,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WidgetTextBox(
                          'Objetivo'.i18n,
                          'Busco oportunidades como desenvolvedor de aplicativos móveis, com foco na plataforma Flutter, visando contribuir com minha experiência em desenvolvimento de software, conhecimentos de UX e habilidades técnicas para criar soluções móveis inovadoras.',
                        ),
                        WidgetTextBox(
                          'Resumo Profissional',
                          'Tenho experiência em desenvolvimento de aplicativos móveis para Android e iOS utilizando Flutter e Dart. Experiência em design de interface de usuário, arquitetura de aplicativos móveis e lançamento de aplicativos na Google Play Store e na App Store da Apple. Habilidades em experiência de usuário, programação orientada a objetos e resolução de problemas',
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  // --------------------------------------------------------------------------------------------------------------
                ],
              ),
              SizedBox(height: 20.0),
              SelectableText(
                'Experiência Profissional',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              WidgetTextBox(
                'Desenvolvedor Flutter na Pensenova',
                'Responsável pelo desenvolvimento de aplicativos móveis para automação industrial, utilizando Flutter e Dart. Conduzindo o ciclo completo de desenvolvimento de aplicativos, desde a concepção até o lançamento, garantindo alta qualidade e performance e experiência do usuário. Destacando o projeto Copal, no qual desenvolvi o aplicativo de parametrização juntamente com a UX/UI do sistema de controle do Robô. - 05/10/2020 até o presente.',
              )
            ],
          ),
        ),
      ),
    );
  }
}
