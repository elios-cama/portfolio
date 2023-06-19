import 'package:flutter/material.dart';
import 'package:portflolio/pages/layouts/project_detail_page_list_layout_widget.dart';

import '../../../../theme/constants.dart';
import '../../../layout/responsive_layout_widget.dart';
import '../../project_detail_page_desktop_layout_widget.dart';
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
    return  Scaffold(
      backgroundColor: green_3,
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: ProjectDetailPageMobileLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            ratio: 1.2,
            title: 'Halle Caoutchouc',
            description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
          desktopWidget: ProjectDetailPageListLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            title: 'Halle Caoutchouc',
            ratio: 16/9,
            description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
        ),
      ),
    );
  }
}
