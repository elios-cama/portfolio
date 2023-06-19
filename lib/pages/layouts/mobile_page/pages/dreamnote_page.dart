import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

import '../../../../routes/router.dart';
import '../../../layout/responsive_layout_widget.dart';
import 'mobile_app_desktop_layout_widget.dart';
import 'mobile_app_mobile_layout_widget.dart';

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
          mobileWidget: MobileAppMobileLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            title: 'Dreamnote',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
          desktopWidget: MobileAppDesktopLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            title: 'Dreamnote',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
        ),
      ),
    );
  }
}
