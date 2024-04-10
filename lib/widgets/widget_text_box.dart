
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

        Visibility(
          visible: widget.title.isNotEmpty,
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          widget.body,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
