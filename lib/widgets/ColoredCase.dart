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
    return AspectRatio(
      aspectRatio: .9,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: color,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth, // Scale the text to fit within the available width
                  child: Text(
                    number,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Archivo',
                      fontSize: constraints.maxWidth * 0.2, // Set the font size based on the width of the container
                    ),
                  ),
                ),
                SizedBox(height: constraints.maxHeight * 0.02), // Add some vertical spacing between the two texts
                FittedBox(
                  fit: BoxFit.fitWidth, // Scale the text to fit within the available width
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Archivo',
                      fontSize: constraints.maxWidth * 0.1, // Set the font size based on the width of the container
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
