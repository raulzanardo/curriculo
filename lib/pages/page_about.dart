import 'package:flutter/material.dart';

import '../widgets/widget_text_box.dart';

class PageAbout extends StatefulWidget {
  const PageAbout({super.key});

  @override
  State<PageAbout> createState() => _PageAboutState();
}

class _PageAboutState extends State<PageAbout> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: 700,
          child: Column(
            children: [
              WidgetTextBox(
                'Oi, meu nome é Raul!',
                'Sou desenvolvedor Flutter há 3 anos. Como sou formado em Engenharia de controle e automação, desenvolvo aplicativos para o setor industrial, trabalhando desde o início do conceito, definindo e criando interfaces e fluxos de usuário, fazendo testes, até a publicação.',
              ),
              WidgetTextBox(
                '',
                'Nascido e criado em São Paulo, adoro exercitar minha criatividade programando, criando interfaces, desenvolvendo dispositivos eletrônicos e fazendo música.',
              ),
              WidgetTextBox(
                '',
                'Sou conhecido pela minha forma criativa de pensar e resolver problemas, minha paixão por construir e modificar coisas, por sempre pensar no futuro e não ter medo de experimentar ou fazer algo novo e excitante. Valorizando uma meta bem definida, com estrutura e ordem, gosto de comunicação clara e objetiva. Família e amigos são minhas coisas mais importantes.',
              ),
              WidgetTextBox(
                '',
                'Já trabalhei programando Controladores lógicos industriais, desenvolvendo trajetórias e interfaces gráficas para sistemas que utilizam robôs de pintura e paletização, criando e integrando sistemas de monitoramento e coleta de dados para plantas industriais. Também me aventurei no mundo da música, como produtor, engenheiro de som de palco e em estúdios e como roadie.',
              ),
              const SizedBox(height: 20.0),

              //TODO inserir links de conta
              const SizedBox(height: 20.0),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    width: constraints.maxWidth,
                    height: constraints.maxWidth*0.7,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/photo_about.png'),
                      ),
                    ),
                  );


                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
