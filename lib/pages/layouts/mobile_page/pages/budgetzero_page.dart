import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

import '../../../layout/responsive_layout_widget.dart';
import 'mobile_app_desktop_layout_widget.dart';
import 'mobile_app_mobile_layout_widget.dart';

class BudgetZeroPage extends StatefulWidget {
  const BudgetZeroPage({Key? key}) : super(key: key);

  @override
  State<BudgetZeroPage> createState() => _BudgetZeroPage();
}

class _BudgetZeroPage extends State<BudgetZeroPage> {
  final List<String> imagePaths = [
    'assets/images/mobile/budgetZero/budget_zero_1.png',
    'assets/images/mobile/budgetZero/budget_zero_2.png',
    'assets/images/mobile/budgetZero/budget_zero_3.png',
  ];
  final List<String> svgIconPaths = [
    'kotlin',
    'git',
    'penpot',
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
            title: 'BudgetZero',
            description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
          desktopWidget: MobileAppDesktopLayoutWidget(
            imagePaths: imagePaths,
            svgIconPaths: svgIconPaths,
            title: 'BudgetZero',
            description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis bibendum ut tristique et egestas. Ornare aenean euismod elementum nisi quis. Non quam lacus suspendisse faucibus interdum posuere. Pharetra pharetra massa massa ultricies. Leo in vitae turpis massa sed elementum. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Nascetur ridiculus mus mauris vitae ultricies leo integer. A diam sollicitudin tempor id eu nisl nunc mi. Diam quam nulla porttitor massa. Adipiscing enim eu turpis egestas pretium. Dolor sit amet consectetur adipiscing elit  ',
          ),
        ),
      ),
    );
  }
}
