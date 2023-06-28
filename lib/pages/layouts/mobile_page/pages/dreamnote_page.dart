import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

import '../../../../routes/router.dart';
import '../../../layout/responsive_layout_widget.dart';
import '../../project_detail_page_desktop_layout_widget.dart';
import '../../project_detail_page_mobile_layout_widget.dart';

class DreamNote extends StatefulWidget {
  const DreamNote({Key? key}) : super(key: key);

  @override
  State<DreamNote> createState() => _DreamNoteState();
}

class _DreamNoteState extends State<DreamNote> {
  final List<String> imagePaths = [
    'assets/images/mobile/dreamnote/dreamnote_1.jpeg',
    'assets/images/mobile/dreamnote/dreamnote_2.jpeg',
    'assets/images/mobile/dreamnote/dreamnote_3.jpeg',
    'assets/images/mobile/dreamnote/dreamnote_4.jpeg',
  ];
  final List<String> svgIconPaths = [
    'flutter',
    'firebase',
    'git',
    'illustrator',
    'linux',
    'jetbrains',
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
              ratio: .7,
              title: 'Dreamnote',
              description:
                  "Dreamote est un projet personnel. C'est une application qui sert à noter ses rêves. Je me suis intéréssé à la mémorisation des rêves et à ses techniques et j'ai donc développé une app me permettant de les écrire et de les analyser. On peut en effet écrire ses rêves facilement, les modifier ainsi que les personnaliser. J'ai travaillé avec un designer UI/UX en free-lance. On peut aussi afficher des statistiques. La base de données est en local sur le stockage du téléphone."),
          desktopWidget: ProjectDetailPageDesktopLayoutWidget(
              imagePaths: imagePaths,
              svgIconPaths: svgIconPaths,
              ratio: .7,
              title: 'Dreamnote',
              description:
                  "Dreamote est un projet personnel. C'est une application qui sert à noter ses rếves. Je me suis intéréssé à la mémorisation des rêves et à ses techniques et j'ai donc développé une app me permettant de les écrire et de les analyser. On peut en effet écrire ses rêves facilement, les modifier ainsi que les personnaliser. J'ai travaillé avec un designer UI/UX en free-lance. On peut aussi afficher des statistiques. La base de données est en local sur le stockage du téléphone."),
        ),
      ),
    );
  }
}
