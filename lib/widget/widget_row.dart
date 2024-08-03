import 'package:flutter/material.dart';

class WidgetRow extends StatelessWidget {
  String subtitle;
  String concepto;
  String url;
  Color color;

  WidgetRow(
      {required this.subtitle,
      required this.concepto,
      required this.url,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 16),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  5.0), // Radio de borde para bordes redondeados
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Color de la sombra
                  blurRadius: 8.0, // Difuminado de la sombra
                  offset: Offset(0, 4), // Offset de la sombra
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: TextStyle(overflow: TextOverflow.ellipsis),
                ),
                Text(concepto)
              ],
            ),
          ),
          Icon(
            Icons.check_circle_rounded,
            size: 30,
            color: color,
          ),
        ],
      ),
    );
  }
}
