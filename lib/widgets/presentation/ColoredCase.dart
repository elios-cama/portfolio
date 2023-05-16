import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.contain, // Scale the text to fit within the available width
              child: Text(
                number,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Archivo',
                  fontSize: 16, // Set the font size based on the width of the container
                ),
              ),
            ),
            const SizedBox(height: defaultPadding), // Add some vertical spacing between the two texts
            FittedBox(
              fit: BoxFit.contain, // Scale the text to fit within the available width
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Archivo',
                  fontSize: 12, // Set the font size based on the width of the container
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
