import 'package:flutter/material.dart';
import 'package:portflolio/pages/layout/responsive_layout_widget.dart';
import 'package:portflolio/pages/layouts/home_page/desktop_grid_widget.dart';
import 'package:portflolio/pages/side_bar/side_bar.dart';

import 'layouts/home_page/mobile_list_widget.dart';

class OtherSection extends StatefulWidget {
  const OtherSection({Key? key}) : super(key: key);

  @override
  State<OtherSection> createState() => _OtherSectionState();
}

class _OtherSectionState extends State<OtherSection> {
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
