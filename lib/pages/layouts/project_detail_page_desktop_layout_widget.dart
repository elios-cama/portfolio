import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

import '../../widgets/mobile/techno_icons_widget.dart';

class ProjectDetailPageDesktopLayoutWidget extends StatelessWidget {
  const ProjectDetailPageDesktopLayoutWidget({
    super.key,
    required this.imagePaths,
    required this.svgIconPaths,
    required this.title,
    required this.description,
    required this.ratio,
  });

  final List<String> imagePaths;
  final List<String> svgIconPaths;
  final String title;
  final String description;
  final double ratio;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Align(
                alignment: Alignment.center,
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: ratio,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 0,
                    autoPlay: true,
                  ),
                  items: imagePaths.map((imagePath) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: AutoSizeText(
                          title,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontFamily: 'Archivo',
                              fontSize: 48),
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 1,
                      child: AutoSizeText(
                        'Technologies utilisées',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontFamily: 'Archivo',
                            fontSize: 48),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        textAlign: TextAlign.left,
                        // textAlign: TextAlign.center,
                      ),
                    ),
                    const Spacer(),
                    TechnoIconsWidget(svgIconPaths: svgIconPaths),
                    const Spacer(),
                    Expanded(
                      flex: 1,
                      child: AutoSizeText(
                        'Résumé du projet',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontFamily: 'Archivo',
                            fontSize: 48),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        textAlign: TextAlign.left,
                        // textAlign: TextAlign.center,
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 4,
                      child: AutoSizeText(
                        description,
                        style: TextStyle(
                          color:
                              Theme.of(context).colorScheme.primaryContainer,
                          fontFamily: 'Archivo',
                        ),
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.left,
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
