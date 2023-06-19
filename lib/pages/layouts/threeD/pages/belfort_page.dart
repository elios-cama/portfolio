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
      backgroundColor: green_3,
      // appBar: AppBar(
      //   backgroundColor: green_3,
      //   leading: IconButton(
      //     onPressed: () => router.go('/3D'),
      //     icon: const Icon(Icons.arrow_back,color: Colors.white,),
      //   ),
      // ),
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: ProjectDetailPageMobileLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            ratio: 1.2,
            title: 'Belfort',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
          desktopWidget: ProjectDetailPageListLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            ratio: 16 / 9,
            title: 'Belfort',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
        ),
      ),
    );
  }
}
