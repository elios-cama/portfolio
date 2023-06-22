import 'package:flutter/material.dart';
import 'package:portflolio/pages/layouts/web/desktopGridWidgetWeb.dart';
import 'package:portflolio/pages/side_bar/side_bar.dart';

import '../theme/constants.dart';
import 'layout/responsive_layout_widget.dart';
import 'layouts/home_page/desktop_grid_widget.dart';
import 'layouts/home_page/mobile_list_widget.dart';
import 'layouts/threeD/desktop_grid_widget.dart';

class WebSection extends StatefulWidget {
  const WebSection({Key? key}) : super(key: key);

  @override
  State<WebSection> createState() => _WebSectionState();
}

class _WebSectionState extends State<WebSection> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: green_1,
      drawer: SideBar(),
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: DesktopGridWidgetWeb(),
          desktopWidget: DesktopGridWidgetWeb(),
        ),
      ),
    );
  }
}
