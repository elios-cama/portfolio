import 'package:flutter/material.dart';
import 'package:portflolio/pages/layouts/threeD/desktop_grid_widget.dart';
import 'package:portflolio/pages/side_bar/side_bar.dart';

import '../theme/constants.dart';
import 'layout/responsive_layout_widget.dart';

class Section3D extends StatefulWidget {
  const Section3D({Key? key}) : super(key: key);

  @override
  State<Section3D> createState() => _Section3DState();
}

class _Section3DState extends State<Section3D> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
      drawer: SideBar(),
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: DesktopGridWidgetThreeD(),
          desktopWidget: DesktopGridWidgetThreeD(),
        ),
      ),
    );
  }
}
