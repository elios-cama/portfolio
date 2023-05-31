import 'package:flutter/material.dart';
import 'package:portflolio/pages/layouts/mobile_page/desktop_grid_widget.dart';
import 'package:portflolio/pages/side_bar/side_bar.dart';

import 'layout/responsive_layout_widget.dart';

class MobileSection extends StatefulWidget {
  const MobileSection({Key? key}) : super(key: key);

  @override
  State<MobileSection> createState() => _MobileSectionState();
}

class _MobileSectionState extends State<MobileSection> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideBar(),
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: DesktopGridWidgetMobile(),
          desktopWidget: DesktopGridWidgetMobile(),
        ),
      ),
    );
  }
}
