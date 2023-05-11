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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Mobile Portfolio",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Voir tout",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            )
          ],
        ));
  }
}
