import 'package:flutter/material.dart';
import 'package:portflolio/pages/layouts/mobile_page/desktop_grid_widget.dart';
import 'package:portflolio/pages/side_bar/side_bar.dart';

import '../theme/constants.dart';
import 'layout/responsive_layout_widget.dart';
import 'layouts/mobile_page/mobile_list_widget.dart';

class MobileSection extends StatefulWidget {
  const MobileSection({Key? key}) : super(key: key);

  @override
  State<MobileSection> createState() => _MobileSectionState();
}

class _MobileSectionState extends State<MobileSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
      drawer: const SideBar(),
      body: const SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: MobileListWidgetMobile(),
          desktopWidget: DesktopGridWidgetMobile(),
        ),
      ),
    );
  }
}
