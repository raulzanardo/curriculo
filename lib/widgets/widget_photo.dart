import 'package:flutter/material.dart';

class WidgetPhoto extends StatelessWidget {
  const WidgetPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    //      alignment: MediaQuery.of(context).size.width > 700 ? Alignment.topLeft : Alignment.center,
    return Column(
      crossAxisAlignment: MediaQuery.of(context).size.width > 800 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Container(
          //TODO ajustar tamanho dinamico da imagem
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/photo.png'),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Text(
          'Raul Zanardo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text('raulzanardo@gmail.com'), //TODO Adicionar mail-to
      ],
    );
  }
}
