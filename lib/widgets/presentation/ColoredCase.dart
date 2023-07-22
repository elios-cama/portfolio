import 'package:auto_size_text/auto_size_text.dart';
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
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                number,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Archivo',
                  fontSize: 32,
                ), // Adjust the font size as needed
                maxLines: 1,
                presetFontSizes: [32, 28, 24, 20], // Font size will scale with the widget size
              ),
              const SizedBox(height: 8),
              AutoSizeText(
                description,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Archivo',
                    fontSize: 16), // Adjust the font size as needed
                maxLines: 2,
                presetFontSizes: [16, 14, 12, 10], // Font size will scale with the widget size
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
