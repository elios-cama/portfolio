import 'package:flutter/material.dart';

class SchoolNameWidget extends StatelessWidget {
  const SchoolNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xFF1E1B1E),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = MediaQuery.of(context).size.width;
          final fontSize = screenWidth > 800 ? 16.0 : screenWidth / 30;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                child: Text(
                  "Ecole:",
                  style: TextStyle(color: Colors.grey.shade700, fontSize: fontSize),
                ),
              ),
              FittedBox(
                child: Text(
                  "UTBM",
                  style: TextStyle(color: Colors.white, fontSize: fontSize),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}