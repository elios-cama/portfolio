import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/mobile/techno_icons_widget.dart';

class MobileAppDesktopLayoutWidget extends StatelessWidget {
  const MobileAppDesktopLayoutWidget({
    super.key,
    required this.imagePaths,
    required this.svgIconPaths,
    required this.title,
    required this.description,
  });

  final List<String> imagePaths;
  final List<String> svgIconPaths;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 3,
          child: Align(
            alignment: Alignment.center,
            child: AutoSizeText(
              title,
              style: const TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
              overflow: TextOverflow.fade,
              maxLines: 1,
            ),
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 12,
          child: Align(
            alignment: Alignment.center,
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 0.7,
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
        const Spacer(),
        const Expanded(
          flex: 1,
          child: AutoSizeText(
            'Technologies utilisées',
            style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
            overflow: TextOverflow.fade,
            maxLines: 1,
            textAlign: TextAlign.left,
            // textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
        TechnoIconsWidget(svgIconPaths: svgIconPaths),
        const Spacer(),
        const Expanded(
          flex: 1,
          child: AutoSizeText(
            'Résumé du projet',
            style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
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
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Archivo',
            ),
            overflow: TextOverflow.fade,
            textAlign: TextAlign.left,
            // textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
