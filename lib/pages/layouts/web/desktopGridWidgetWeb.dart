import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../routes/router.dart';
import '../../../theme/constants.dart';

class DesktopGridWidgetWeb extends StatefulWidget {
  const DesktopGridWidgetWeb({Key? key}) : super(key: key);

  @override
  State<DesktopGridWidgetWeb> createState() => _DesktopGridWidgetWeb();
}

class _DesktopGridWidgetWeb extends State<DesktopGridWidgetWeb> {
  final Map<String, String> images = {
    'assets/images/web/musicGrid/music_grid_5.png': 'web/musicGrid',
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
            Flexible(
              flex: 2,
              child: AutoSizeText(
                "Quel projet Web vous intéresse ? ",
                style: TextStyle(color: Theme.of(context).colorScheme.primary, fontFamily: 'Archivo', fontSize: 48),
                overflow: TextOverflow.fade,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              flex: 10,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
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
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                        color: Colors.white.withOpacity(.3),
                                      ),
                                      child: Text(
                                        hoveredText.substring("/web".length).toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
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
