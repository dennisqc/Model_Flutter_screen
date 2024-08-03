import 'package:flutter/material.dart';

class WidgetInfo extends StatelessWidget {
  String type;
  String quanatity;
  WidgetInfo({required this.type, required this.quanatity});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          type,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          quanatity,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
