import 'package:flutter/material.dart';
import 'package:portflolio/widgets/carousel/portfolio_carousel_image_widget.dart';

class PortfolioCarousel extends StatelessWidget {
  const PortfolioCarousel({
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
          return Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mobile Portfolio",
                      style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Voir tout",
                      style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Flexible(
                flex: 8,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CarouselImageWidget(
                      path: 'daymode_carousel',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CarouselImageWidget(
                      path: 'daymode_carousel',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CarouselImageWidget(
                      path: 'daymode_carousel',
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
