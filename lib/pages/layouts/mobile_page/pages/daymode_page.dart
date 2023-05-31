import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


import '../../../../widgets/mobile/techno_icons_widget.dart';

class DaymodePage extends StatefulWidget {
  const DaymodePage({Key? key}) : super(key: key);

  @override
  State<DaymodePage> createState() => _DaymodePageState();
}

class _DaymodePageState extends State<DaymodePage> {
  final List<String> imagePaths = [
    'assets/images/daymode_carousel.png',
    'assets/images/donut.png',
    'assets/images/elios.png',
    'assets/images/map.png',
    'assets/images/daymode_2.png',
  ];
  final List<String> svgIconPaths = [
    'flutter',
    'unity',
    'blender',
    'linux',
    'tensorflow',
    'jetbrains',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          const Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.center,
              child: AutoSizeText(
                'Daymode',
                style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
                overflow: TextOverflow.fade,
                maxLines: 1,
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 15,
            child: Align(
              alignment: Alignment.center,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 0.7,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  autoPlay: false,
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
        ],
      ),
    );
  }
}


