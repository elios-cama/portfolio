import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../routes/router.dart';
import '../../../theme/constants.dart';

class DesktopGridWidgetMobile extends StatefulWidget {
  const DesktopGridWidgetMobile({
    super.key,
  });

  @override
  State<DesktopGridWidgetMobile> createState() => _DesktopGridWidgetMobileState();
}

class _DesktopGridWidgetMobileState extends State<DesktopGridWidgetMobile> {
  final Map<String, String> images = {
    'assets/images/mobile/daymode_pres.png': 'mobile/daymode',
    'assets/images/mobile/dreamnote_pres.png': 'mobile/dreamnote',
    'assets/images/mobile/budget_zero_pres.png': 'mobile/budgetzero',
  };
  int _currentCardIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
              flex: 2,
              child: AutoSizeText(
                "Quel projet mobile vous intéresse ? ",
                style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
                overflow: TextOverflow.fade,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              flex: 10,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentCardIndex = index;
                    });
                  },
                ),
                items: images.entries.map((entry) {
                  final imagePath = entry.key;
                  final hoveredText = entry.value;
                  return Builder(
                    builder: (BuildContext context) {
                      bool isHovered = _currentCardIndex == images.keys.toList().indexOf(imagePath);
                      return InkWell(
                        onTap: () {
                          router.go('/${entry.value}');
                        },
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: isHovered ? 1.0 : 0.3,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    imagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                if (isHovered)
                                  Positioned(
                                    bottom: 4,
                                    left: 0,
                                    right: 0,
                                    child: Center(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24),
                                          color: Colors.white,
                                        ),
                                        child: Text(
                                          hoveredText.substring("/mobile".length).toUpperCase(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
