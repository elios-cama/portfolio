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
    return  Scaffold(
      backgroundColor: green_3,
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: ProjectDetailPageMobileLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            ratio: 21/9,
            title: 'Music Grid',
            description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
          desktopWidget: ProjectDetailPageListLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            title: 'Music Grid',
            ratio: 21/9,
            description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
        ),
      ),
    );
  }
}
