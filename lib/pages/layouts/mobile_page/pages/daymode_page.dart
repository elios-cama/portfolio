import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portflolio/theme/constants.dart';

import '../../../../routes/router.dart';
import '../../../layout/responsive_layout_widget.dart';
import 'mobile_app_desktop_layout_widget.dart';
import 'mobile_app_mobile_layout_widget.dart';

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
      backgroundColor: green_3,
      // appBar: AppBar(
      //   backgroundColor: green_3,
      //   leading: IconButton(
      //     onPressed: () => router.go('/mobile'),
      //     icon: const Icon(Icons.arrow_back,color: Colors.white,),
      //   ),
      // ),
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: MobileAppMobileLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            title: 'Daymode',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
          desktopWidget: MobileAppDesktopLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            title: 'Daymode',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
        ),
      ),
    );
  }
}
