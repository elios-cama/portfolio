import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

import '../../widgets/mobile/techno_icons_widget.dart';

class ProjectDetailPageMobileLayoutWidget extends StatelessWidget {
  const ProjectDetailPageMobileLayoutWidget({
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: AutoSizeText(
                  title,
                  style: const TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                ),
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              SizedBox(
                height: 500,
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
              const SizedBox(
                height: defaultPadding,
              ),
              const AutoSizeText(
                'Technologies utilisées',
                style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
                overflow: TextOverflow.fade,
                maxLines: 1,
                textAlign: TextAlign.left,
                // textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              TechnoIconsWidget(svgIconPaths: svgIconPaths),
              const SizedBox(
                height: defaultPadding,
              ),
              const AutoSizeText(
                'Résumé du projet',
                style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
                overflow: TextOverflow.fade,
                maxLines: 1,
                textAlign: TextAlign.left,
                // textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              AutoSizeText(
                description,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Archivo',
                ),
                overflow: TextOverflow.fade,
                textAlign: TextAlign.left,
                // textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
