import 'package:curriculo/localization/localization_curriculum.i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetTextBox extends StatefulWidget {
  String title;
  String body;

  WidgetTextBox(this.title, this.body, {super.key});

  @override
  State<WidgetTextBox> createState() => _WidgetTextBoxState();
}

class _WidgetTextBoxState extends State<WidgetTextBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20.0),
        Visibility(
          visible: widget.title.isNotEmpty,
          child: Text(
            widget.title.i18n,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          widget.body.i18n,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
