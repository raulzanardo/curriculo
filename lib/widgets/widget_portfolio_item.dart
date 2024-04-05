import 'package:flutter/material.dart';

class WidgetPortfolioItem extends StatefulWidget {
  const WidgetPortfolioItem({super.key});

  @override
  State<WidgetPortfolioItem> createState() => _WidgetPortfolioItemState();
}

class _WidgetPortfolioItemState extends State<WidgetPortfolioItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
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
