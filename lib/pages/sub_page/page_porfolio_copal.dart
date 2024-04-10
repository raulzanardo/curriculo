import 'package:curriculo/widgets/widget_text_box.dart';
import 'package:flutter/material.dart';

class PagePortfolioCopal extends StatefulWidget {
  String title;
  String image;

  PagePortfolioCopal({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  State<PagePortfolioCopal> createState() => _PagePortfolioCopalState();
}

class _PagePortfolioCopalState extends State<PagePortfolioCopal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Copal'),
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.navigate_before),
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: 700,
            child: Column(
              children: [
                Hero(
                  tag: widget.title,
                  child: Container(
                    //width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: const Color.fromARGB(255, 97, 126, 139),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(widget.image),

                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20.0),
                WidgetTextBox('CoPal', 'Copal vem de “Cooperative Palletization”, trata-se de um ecossistema integrado voltado à paletização inteligente utilizando robôs industriais em uma linha de produção. '),
                WidgetTextBox(
                  '',
                  'O papel do aplicativo de parametrização e controle CoPal é facilitar as trocas de produtos e da maneira que os produtos são dispostos no palete, chamadas de “amarras”. O usuário consegue configurar todos os dados da parametrização, desde o tamanho do palete, o tamanho das caixas e amarras. Em seguida, o usuário pode enviar os dados para o robô e determinar qual função irá exercer.',
                ),
                WidgetTextBox(
                  '',
                  'O aplicativo foi desenvolvido em Flutter para Android e iOS e é disponibilizado livremente, apenas com a necessidade de uma chave de licença para que os dados possam ser enviados para o robô. ',
                ),
                WidgetTextBox(
                  '',
                  'A experiência do usuário é simples e o induz a seguir um “Wizard” com as etapas necessárias para a finalização da parametrização.  No final do processo o aplicativo acessa a tela remota do controlador do robô para que o mesmo seja acionado pelo aplicativo.',
                ),
                WidgetTextBox(
                  'PRINTS DAS TELAS DO APLICATIVO ',
                  '',
                ),
                WidgetTextBox(
                  '',
                  'Com o intuito de unificar a experiência do usuário ao longo do ecossistema CoPal, também desenvolvi a interface gráfica da tela do controlador do robô. A interface tenta ser fiel ao aplicativo, mesmo com as limitações do sistema. ',
                ),
                WidgetTextBox(
                  'LINK PARA AS LOJAS',
                  '',
                ),
                WidgetTextBox(
                  '',
                  '',
                ),
                WidgetTextBox(
                  '',
                  '',
                ),
                WidgetTextBox(
                  '',
                  '',
                ),
                WidgetTextBox(
                  '',
                  '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
