import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';
import 'package:portflolio/widgets/carousel/portfolio_carousel_image_widget.dart';

import '../../pages/home_page.dart';

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
        color: green_6,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
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
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Expanded(
            flex: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarouselImageWidget(
                  image_path: 'daymode_logo.png',
                  route_path: 'daymode',
                ),
                SizedBox(
                  width: 8,
                ),
                CarouselImageWidget(
                  image_path: 'budget_zero_logo.png',
                  route_path: 'budgetzero',
                ),
                SizedBox(
                  width: 8,
                ),
                CarouselImageWidget(
                  image_path: 'dreamnote_logo.png',
                  route_path: 'dreamnote',
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
