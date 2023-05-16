import 'package:flutter/material.dart';

import 'layout/responsive_layout_widget.dart';
import 'layouts/home_page/desktop_grid_widget.dart';
import 'layouts/home_page/mobile_list_widget.dart';

class WebSection extends StatefulWidget {
  const WebSection({Key? key}) : super(key: key);

  @override
  State<WebSection> createState() => _WebSectionState();
}

class _WebSectionState extends State<WebSection> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: MobileListWidget(),
          desktopWidget: DesktopGridWidget(),
        ),
      ),
    );
  }
}
