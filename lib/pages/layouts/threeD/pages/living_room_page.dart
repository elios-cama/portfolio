import 'package:flutter/material.dart';
import 'package:portflolio/pages/layouts/project_detail_page_list_layout_widget.dart';

import '../../../../theme/constants.dart';
import '../../../layout/responsive_layout_widget.dart';
import '../../project_detail_page_desktop_layout_widget.dart';
import '../../project_detail_page_mobile_layout_widget.dart';

class LivingRoomPage extends StatefulWidget {
  const LivingRoomPage({Key? key}) : super(key: key);

  @override
  State<LivingRoomPage> createState() => _LivingRoom();
}

class _LivingRoom extends State<LivingRoomPage> {
  final List<String> imagePaths = [
    'assets/images/3D/salon/salon_1.png',
    'assets/images/3D/salon/salon_2.png',
    'assets/images/3D/salon/salon_3.png',
    'assets/images/3D/salon/salon_4.png',
  ];
  final List<String> svgIconPaths = [
    'blender',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: ProjectDetailPageMobileLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            ratio: 1.2,
            title: 'Le salon',
            description:
                "Le projet du salon est un projet scolaire dans le cadre de mon master Mondes virtuels. Le but était de modéliser un salon simple avec Blender. J'ai donc créé une jolie pièce à vivre avec une table, de la vaisselle et des fruits. J'ai aussi modélisé un coin salon avec un canapé, un tapis et des plantes. J'ai travaillé les matériaux, les textures et les lumières afin d'avoir un rendu le plus réaliste possible. ",
          ),
          desktopWidget: ProjectDetailPageListLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            title: 'Le salon',
            ratio: 16 / 9,
            description:
                "Le projet du salon est un projet scolaire dans le cadre de mon master Mondes virtuels. Le but était de modéliser un salon simple avec Blender. J'ai donc créé une jolie pièce à vivre avec une table, de la vaisselle et des fruits. J'ai aussi modélisé un coin salon avec un canapé, un tapis et des plantes. J'ai travaillé les matériaux, les textures et les lumières afin d'avoir un rendu le plus réaliste possible. ",
          ),
        ),
      ),
    );
  }
}
