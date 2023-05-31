import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

import 'mobile_app_desktop_layout_widget.dart';

class DaymodePage extends StatefulWidget {
  const DaymodePage({Key? key}) : super(key: key);

  @override
  State<DaymodePage> createState() => _DaymodePageState();
}

class _DaymodePageState extends State<DaymodePage> {
  final List<String> imagePaths = [
    'assets/images/daymode_carousel.png',
    'assets/images/donut.png',
    'assets/images/elios.png',
    'assets/images/map.png',
    'assets/images/daymode_2.png',
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
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: MobileAppDesktopLayoutWidget(
          imagePaths: imagePaths,
          svgIconPaths: svgIconPaths,
          title: 'Daymode',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit duis tristique. Commodo ullamcorper a lacus vestibulum sed. Vel risus commodo viverra maecenas accumsan lacus vel facilisis volutpat. Netus et malesuada fames ac turpis egestas sed tempus urna. Ac felis donec et odio pellentesque diam.Lacus luctus accumsan tortor posuere ac. Placerat orci nulla pellentesque dignissim enim sit amet. Leo a diam sollicitudin tempor id eu nisl nunc mi. Dolor purus non enim praesent elementum. Vitae tempus quam pellentesque nec nam aliquam sem. Massa ultricies mi quis hendrerit dolor magna eget est. Quis lectus nulla at volutpat diam ut. Enim nunc faucibus a pellentesque. Erat velit scelerisque in dictum. Tempus imperdiet nulla malesuada pellentesque elit. Posuere morbi leo urna molestie at. Eu facilisis sed odio morbi quis commodo. ',
        ),
      ),
    );
  }
}
