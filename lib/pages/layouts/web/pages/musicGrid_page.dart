import 'package:flutter/material.dart';
import 'package:portflolio/pages/layouts/project_detail_page_list_layout_widget.dart';

import '../../../../theme/constants.dart';
import '../../../layout/responsive_layout_widget.dart';
import '../../project_detail_page_mobile_layout_widget.dart';

class MusicGridPage extends StatefulWidget {
  const MusicGridPage({Key? key}) : super(key: key);

  @override
  State<MusicGridPage> createState() => _MusicGridPage();
}

class _MusicGridPage extends State<MusicGridPage> {
  final List<String> imagePaths = [
    'assets/images/web/musicGrid/music_grid_1.png',
    'assets/images/web/musicGrid/music_grid_2.png',
    'assets/images/web/musicGrid/music_grid_3.png',
    'assets/images/web/musicGrid/music_grid_4.png',
  ];
  final List<String> svgIconPaths = [
    'python',
    'django',
    'html',
    'css',
    'jetbrains',
    'git',
    'deezer',
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
              ratio: 21 / 9,
              title: 'Music Grid',
              description:
                  "Music Grid est un projet personnel à l'initiative d'une discussion avec mon frère. Passionés de musique nous voulions avoir un accès aux statistiques de ce que nous écoutions. J'ai donc développer un projet web avec Django. Le site permet à l'utilisateur de se connecter à l'API de Deezer et ensuite de générer une grille des 25 pochettes d'albums les plus écoutés. "),
          desktopWidget: ProjectDetailPageListLayoutWidget(
              imagePaths: imagePaths,
              svgIconPaths: svgIconPaths,
              title: 'Music Grid',
              ratio: 21 / 9,
              description:
                  "Music Grid est un projet personnel à l'initiative d'une discussion avec mon frère. Passionés de musique nous voulions avoir un accès aux statistiques de ce que nous écoutions. J'ai donc développer un projet web avec Django. Le site permet à l'utilisateur de se connecter à l'API de Deezer et ensuite de générer une grille des 25 pochettes d'albums les plus écoutés. "),
        ),
      ),
    );
  }
}
