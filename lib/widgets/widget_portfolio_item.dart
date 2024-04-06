import 'package:curriculo/pages/page_porfolio_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetPortfolioItem extends StatefulWidget {
  String image;
  String title;
  String body;

  WidgetPortfolioItem({
    super.key,
    required this.image,
    required this.title,
    required this.body,
  });

  @override
  State<WidgetPortfolioItem> createState() => _WidgetPortfolioItemState();
}

class _WidgetPortfolioItemState extends State<WidgetPortfolioItem> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PagePortfolioItem(),
            ),
          );
        },
        child: SizedBox(
          //width: 200,
          width: (MediaQuery.of(context).size.width < 500) ? double.infinity : 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(widget.image),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                widget.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                widget.body,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
