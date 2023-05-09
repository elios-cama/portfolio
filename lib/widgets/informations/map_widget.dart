import 'package:flutter/material.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({
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
          final screenHeight = MediaQuery.of(context).size.height;
          final fontSize = screenWidth > 800 ? 16.0 : screenHeight / 30;
          final imageSize = screenWidth > 600 ? 200.0 : screenHeight;
          return Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        "Basé à:",
                        style: TextStyle(color: Colors.grey.shade700, fontSize: fontSize),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        "Belfort",
                        style: TextStyle(color: Colors.white, fontSize: fontSize),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/map.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  constraints: BoxConstraints.expand(height: imageSize),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
