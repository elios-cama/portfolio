import 'package:flutter/material.dart';
import 'package:portflolio/pages/side_bar/side_bar.dart';
import '../theme/constants.dart';
import 'layout/responsive_layout_widget.dart';
import 'layouts/home_page/desktop_grid_widget.dart';
import 'layouts/home_page/mobile_list_widget.dart';
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      key: scaffoldKey,
      drawer: const SideBar(),
      body: const SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: MobileListWidget(),
          desktopWidget: DesktopGridWidget(),
        ),
      ),
    );
  }
}
