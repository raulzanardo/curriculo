import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return SvgPicture.asset(
      width: 25,
      height: 25,
      'assets/images/icons/icon_${widget.iconName}_dark.svg',
      //TODO verificar outro método para troca de cor do SVG
      color: (Theme.of(context).brightness == Brightness.dark )  ? Colors.white : Colors.black,
    );
  }
}
