import 'package:curriculo/localization/localization_portfolio_copal.i18n.dart';
import 'package:curriculo/widgets/widget_text_box.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

int copalSelectedPrint = 0;

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
        title: const Text('CoPal'),
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
                WidgetTextBox('CoPal', 'Copal vem de “Cooperative Palletization”, trata-se de um ecossistema integrado voltado à paletização inteligente utilizando robôs industriais em uma linha de produção.'.i18n),
                WidgetTextBox(
                  '',
                  'O papel do aplicativo de parametrização e controle CoPal é facilitar as trocas de produtos e da maneira que os produtos são dispostos no palete, chamadas de “amarras”. O usuário consegue configurar todos os dados da parametrização, desde o tamanho do palete, o tamanho das caixas e amarras. Em seguida, o usuário pode enviar os dados para o robô e determinar qual função irá exercer.'.i18n,
                ),
                WidgetTextBox(
                  '',
                  'O aplicativo foi desenvolvido em Flutter para Android e iOS e é disponibilizado livremente, apenas com a necessidade de uma chave de licença para que os dados possam ser enviados para o robô.'.i18n,
                ),
                WidgetTextBox(
                  '',
                  'A experiência do usuário é simples e o induz a seguir um “Wizard” com as etapas necessárias para a finalização da parametrização.  No final do processo o aplicativo acessa a tela remota do controlador do robô para que o mesmo seja acionado pelo aplicativo.'.i18n,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Theme.of(context).dialogBackgroundColor.withOpacity(0.7),
                                insetPadding: const EdgeInsets.all(10),
                                contentPadding: const EdgeInsets.all(10),
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                title: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: const Icon(Icons.close),
                                    ),
                                  ],
                                ),
                                content: Container(
                                  width: double.maxFinite,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.scaleDown,
                                      image: AssetImage('assets/images/portfolio/copal/2_menu.png'),
                                    ),
                                  ),
                                ),
                                actionsAlignment: MainAxisAlignment.spaceBetween,
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/images/portfolio/copal/2_Menu.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Theme.of(context).dialogBackgroundColor.withOpacity(0.7),
                                insetPadding: const EdgeInsets.all(10),
                                contentPadding: const EdgeInsets.all(10),
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                title: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: const Icon(Icons.close),
                                    ),
                                  ],
                                ),
                                content: Container(
                                  width: double.maxFinite,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.scaleDown,
                                      image: AssetImage('assets/images/portfolio/copal/5_pallet.png'),
                                    ),
                                  ),
                                ),
                                actionsAlignment: MainAxisAlignment.spaceBetween,
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/images/portfolio/copal/5_pallet.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                WidgetTextBox(
                  '',
                  'Com o intuito de unificar a experiência do usuário ao longo do ecossistema CoPal, também desenvolvi a interface gráfica da tela do controlador do robô. A interface tenta ser fiel ao aplicativo, mesmo com as limitações do sistema.'.i18n,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse('https://apps.apple.com/br/app/copal/id1660752505/'));
                        },
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage('assets/images/app_store.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse('https://play.google.com/store/apps/details?id=com.pensenova.copalv2&hl=pt&gl=US'));
                        },
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage('assets/images/google_play.png'),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
