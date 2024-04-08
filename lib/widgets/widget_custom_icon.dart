import 'package:flutter/material.dart';

//TODO mudar pra SVG
class WidgetCustomIcon extends StatefulWidget {
  String iconName;

  WidgetCustomIcon({
    super.key,
    required this.iconName,
  });

  @override
  State<WidgetCustomIcon> createState() => _WidgetCustomIconState();
}

class _WidgetCustomIconState extends State<WidgetCustomIcon> {



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        image: DecorationImage(

          image: (Theme.of(context).brightness == Brightness.dark ) ? AssetImage('assets/images/icons/icon_${widget.iconName}_light.png') :  AssetImage('assets/images/icons/icon_${widget.iconName}_dark.png'),
        ),
      ),
    );
  }
}
