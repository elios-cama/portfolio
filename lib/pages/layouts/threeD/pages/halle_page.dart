import 'package:flutter/material.dart';
import 'package:portflolio/pages/layouts/project_detail_page_list_layout_widget.dart';

import '../../../../theme/constants.dart';
import '../../../layout/responsive_layout_widget.dart';
import '../../project_detail_page_mobile_layout_widget.dart';

class HallePage extends StatefulWidget {
  const HallePage({Key? key}) : super(key: key);

  @override
  State<HallePage> createState() => _HallePage();
}

class _HallePage extends State<HallePage> {
  final List<String> imagePaths = [
    'assets/images/3D/halle/halle_1.png',
    'assets/images/3D/halle/halle_2.png',
    'assets/images/3D/halle/halle_3.png',
    'assets/images/3D/halle/halle_4.png',
    'assets/images/3D/halle/halle_5.png',
    'assets/images/3D/halle/halle_6.png',
  ];
  final List<String> svgIconPaths = [
    'blender',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green_3,
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: ProjectDetailPageMobileLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            ratio: 1.2,
            title: 'Halle Caoutchouc',
            description: "Dans le cadre d'un projet scolaire sur le patrimoine industriel en France, j'ai proposé une maquette 3D du bâtiment que j'étudiais avec un projet de réhabilitation. J'ai tout d'abord modélisé la Halle Caoutchouc avec son architecture réelle, puis ajouter des extensions correspondant à mon projet de réhabilitation. Le travail est fait avec Blender. ",
          ),
          desktopWidget: ProjectDetailPageListLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            title: 'Halle Caoutchouc',
            ratio: 16 / 9,
            description:
                "Dans le cadre d'un projet scolaire sur le patrimoine industriel en France, j'ai proposé une maquette 3D du bâtiment que j'étudiais avec un projet de réhabilitation. J'ai tout d'abord modélisé la Halle Caoutchouc avec son architecture réelle, puis ajouter des extensions correspondant à mon projet de réhabilitation. Le travail est fait avec Blender. ",
          ),
        ),
      ),
    );
  }
}
