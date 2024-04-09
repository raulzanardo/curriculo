import 'package:curriculo/widgets/widget_custom_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/widget_photo.dart';
import '../widgets/widget_text_box.dart';

import '../localization/localization_curriculum.i18n.dart';

//https://www.coderzheaven.com/2019/04/26/tabbedappbar-in-flutter-android-and-ios/

class PageResume extends StatefulWidget {
  const PageResume({super.key});

  @override
  State<PageResume> createState() => _PageResumeState();
}

class _PageResumeState extends State<PageResume> {
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WidgetTextBox(
                          'Objetivo'.i18n,
                          'Procuro oportunidades como desenvolvedor de aplicativos móveis, especializado em Flutter, para aplicar minha experiência em desenvolvimento de software, conhecimentos de UX e habilidades técnicas na criação de aplicações móveis inovadoras.',
                        ),
                        WidgetTextBox(
                          'Resumo Profissional',
                          'Tenho experiência em desenvolvimento de aplicativos para Android e iOS usando Flutter e Dart, incluindo design de interface de usuário e lançamento nas lojas de aplicativos.',
                        ),
                        Visibility(
                          visible: (MediaQuery.of(context).size.width > 800),
                          child: Column(
                            children: [

                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      launchUrl(Uri.parse('https://github.com/raulzanardo'));
                                    },
                                    icon: WidgetCustomIcon(iconName: 'github'),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      launchUrl(Uri.parse('https://www.linkedin.com/in/raulzanardo/'));
                                    },
                                    icon: WidgetCustomIcon(iconName: 'linkedin'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  // --------------------------------------------------------------------------------------------------------------
                ],
              ),

              Text(
                'Experiência Profissional'.i18n,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              WidgetTextBox(
                'Desenvolvedor de automação na Nova Tecnologia',
                'Desenvolvimento de projetos de automação envolvendo sistemas de monitoramento industrial (Scada), robótica e aplicações voltadas para processos de pintura industrial. Elaboração de esquemas elétricos para montagem de quadros elétricos utilizando o EPLAN. – 06/10/2014 até 30/04/2018',
              ),
              WidgetTextBox(
                'Técnico em eletrônica na Flex Automation',
                'Responsável pelo gerenciamento do setor de manutenção de módulos de automação residencial, também fiz parte do time que efetuava manutenção e montagem de placas de circuito eletrônico. - 02/05/2014 até 30/09/2014',
              ),
              WidgetTextBox(
                'Estagiário de automação na Nova Tecnologia',
                'Desenvolvimento de sistemas de controle e automação predial e de eficiência energética.  05/11/2012 até 25/10/2013.',
              ),

              Text(
                'Formação Acadêmica'.i18n,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              WidgetTextBox(
                'Graduação em Engenharia de Controle e Automação',
                'IFSP Instituto Federal de Educação, Ciência e Tecnologia de São Paulo - 01/06/2009 a 28/08/2019',
              ),
              WidgetTextBox(
                'Técnico em Eletrônica',
                'ETEC Professor Aprígio Gonzaga - 01/06/2007 a 15/12/2008',
              ),

              Text(
                'Cursos Complementares'.i18n,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Certificado Profissional Google UX Design (Coursera - Nível 1 - Março de 2024)',
                textAlign: TextAlign.justify,
              ),
              Text(
                'Flutter Provider Essential Course (Udemy - Março/Abril de 2024)',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20.0),
              Text(
                'Habilidades'.i18n,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Linguagens: Dart, C/C++, Python, Bash, HTML, JavaScript',
                textAlign: TextAlign.justify,
              ),
              Text(
                'Ferramentas: Android Studio, VSCode',
                textAlign: TextAlign.justify,
              ),
              Text(
                'Plataformas: Flutter, Android, iOS, PlatformIO, Linux, Arduino',
                textAlign: TextAlign.justify,
              ),
              Text(
                'Versionamento de Código: Git, Github',
                textAlign: TextAlign.justify,
              ),
              Text(
                'Idiomas: Inglês avançado',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
