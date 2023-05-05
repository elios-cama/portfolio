import 'package:flutter/material.dart';

class ColoredCase extends StatelessWidget {
  const ColoredCase({
    super.key,
    required this.color,
    required this.number,
    required this.description,
  });

  final Color color;
  final String number;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.only(right: 8,bottom: 8,top: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number,
              style: const TextStyle(
                  color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold, fontFamily: 'Archivo'),
            ),
            Text(
              description,
              style: const TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Archivo'),
            ),
          ],
        ),
      ),
    );
  }
}