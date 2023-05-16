import 'package:flutter/material.dart';
import 'layout/responsive_layout_widget.dart';
import 'layouts/home_page/desktop_grid_widget.dart';
import 'layouts/home_page/mobile_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ResponsiveLayoutWidget(mobileWidget: MobileListWidget(),desktopWidget: DesktopGridWidget(),),
      ),
    );
  }
}






