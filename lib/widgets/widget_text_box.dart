import 'package:flutter/material.dart';

class WidgetTextBox extends StatefulWidget {
  String title;

  WidgetTextBox(this.title, this.body);

  String body;

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
        SelectableText (
          widget.title,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SelectableText (
          widget.body,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
