import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

import '../../../layout/responsive_layout_widget.dart';
import '../../project_detail_page_desktop_layout_widget.dart';
import '../../project_detail_page_mobile_layout_widget.dart';

class DaymodePage extends StatefulWidget {
  const DaymodePage({Key? key}) : super(key: key);

  @override
  State<DaymodePage> createState() => _DaymodePageState();
}

class _DaymodePageState extends State<DaymodePage> {
  final List<String> imagePaths = [
    'assets/images/mobile/daymode/daymode_1.PNG',
    'assets/images/mobile/daymode/daymode_2.PNG',
    'assets/images/mobile/daymode/daymode_3.PNG',
    'assets/images/mobile/daymode/daymode_4.PNG',
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
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      // appBar: AppBar(
      //   backgroundColor: green_3,
      //   leading: IconButton(
      //     onPressed: () => router.go('/mobile'),
      //     icon: const Icon(Icons.arrow_back,color: Colors.white,),
      //   ),
      // ),
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: ProjectDetailPageMobileLayoutWidget(
              imagePaths: imagePaths,
              svgIconPaths: svgIconPaths,
              title: 'Daymode',
              ratio: .7,
              description:
                  "J'ai réalisé mon stage de master 1 chez Daymode, une start-up de cinq personnes, située à Lyon. Daymode est une application de dressing virtuel et d'essayage de vêtements en 3D. J'ai développé avec le CTO la nouvelle version de l'application. J'ai utilisé Unity pour gérer les scripts de rendus de l'application et aussi Blender pour retoucher des objets. A la fin de mon stage j'ai développé un réseau GAN à l'aide de Tensorflow afin de faire de la suggestion de tenues. C'était un travail en étroite collaboration avec le CTO. "),
          desktopWidget: ProjectDetailPageDesktopLayoutWidget(
              imagePaths: imagePaths,
              svgIconPaths: svgIconPaths,
              title: 'Daymode',
              ratio: .7,
              description:
                  "J'ai réalisé mon stage de master 1 chez Daymode, une start-up de cinq personnes, située à Lyon. Daymode est une application de dressing virtuel et d'essayage de vêtements en 3D. J'ai développé avec le CTO la nouvelle version de l'application. J'ai utilisé Unity pour gérer les scripts de rendus de l'application et aussi Blender pour retoucher des objets. A la fin de mon stage j'ai développé un réseau GAN à l'aide de Tensorflow afin de faire de la suggestion de tenues. C'était un travail en étroite collaboration avec le CTO. "),
        ),
      ),
    );
  }
}
