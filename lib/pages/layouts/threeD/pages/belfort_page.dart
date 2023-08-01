import 'package:flutter/material.dart';

import '../../../../theme/constants.dart';
import '../../../layout/responsive_layout_widget.dart';
import '../../project_detail_page_desktop_layout_widget.dart';
import '../../project_detail_page_list_layout_widget.dart';
import '../../project_detail_page_mobile_layout_widget.dart';

class BelfortPage extends StatefulWidget {
  const BelfortPage({Key? key}) : super(key: key);

  @override
  State<BelfortPage> createState() => _BelfortPageState();
}

class _BelfortPageState extends State<BelfortPage> {
  final List<String> imagePaths = [
    'assets/images/3D/belfort/belfort_1.png',
    'assets/images/3D/belfort/belfort_2.png',
  ];
  final List<String> svgIconPaths = [
    'unity',
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
              title: 'Belfort',
              description:
                  "Dans le cadre d'un projet scolaire dans un groupe de trois, j'ai réalisé la carte en 3D de la zone de l'UTBM. Le but du projet était de réaliser un simulateur immersif de trajet en vélo dans Belfort avec son trafic. Nous avons donc réalisé une application en réalité virtuelle dans la zone de notre école avec une gestion de trafic et de météo. La carte a été réalisée avec Blender en respectant les mesures, les formes des bâtiments ainsi que les textures réelles. "),
          desktopWidget: ProjectDetailPageListLayoutWidget(
              imagePaths: imagePaths,
              svgIconPaths: svgIconPaths,
              ratio: 16 / 9,
              title: 'Belfort',
              description:
                  "Dans le cadre d'un projet scolaire dans un groupe de trois, j'ai réalisé la carte en 3D de la zone de l'UTBM. Le but du projet était de réaliser un simulateur immersif de trajet en vélo dans Belfort avec son trafic. Nous avons donc réalisé une application en réalité virtuelle dans la zone de notre école avec une gestion de trafic et de météo. La carte a été réalisée avec Blender en respectant les mesures, les formes des bâtiments ainsi que les textures réelles. "),
        ),
      ),
    );
  }
}
