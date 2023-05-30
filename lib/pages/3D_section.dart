import 'package:flutter/material.dart';
import 'package:portflolio/pages/side_bar/side_bar.dart';

import 'layout/responsive_layout_widget.dart';
import 'layouts/home_page/desktop_grid_widget.dart';
import 'layouts/home_page/mobile_list_widget.dart';

class Section3D extends StatefulWidget {
  const Section3D({Key? key}) : super(key: key);

  @override
  State<Section3D> createState() => _Section3DState();
}

class _Section3DState extends State<Section3D> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideBar(),
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: MobileListWidget(),
          desktopWidget: DesktopGridWidget(),
        ),
      ),
    );
  }
}
