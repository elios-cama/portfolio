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
          color: secondaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Row(
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
            ),
            const Spacer(),
            const Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarouselImageWidget(
                    path: 'daymode_logo.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CarouselImageWidget(
                    path: 'budget_zero_logo.png',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CarouselImageWidget(
                    path: 'dreamnote_logo.png',
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
