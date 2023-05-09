import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
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
          final screenWidth = constraints.maxWidth;
          final fontSize = screenWidth > 600 ? 22.0 : screenWidth / 20;
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Elios Cama',
                  textAlign: TextAlign.left,
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
