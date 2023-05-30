import 'package:flutter/material.dart';
import 'package:portflolio/pages/home_page.dart';

import '../../responsive.dart';
import '../../theme/constants.dart';
import '../side_bar/side_bar.dart';

class ResponsiveLayoutWidget extends StatelessWidget {
  const ResponsiveLayoutWidget({
    super.key,
    required this.mobileWidget,
    required this.desktopWidget,
  });

  final Widget mobileWidget;
  final Widget desktopWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (Responsive.isMobile(context))
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 50,
              child: Builder(builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const Icon(
                    Icons.menu,
                    size: 25,
                  ),
                );
              }),
            ),
          ),
        Expanded(
          flex: 30,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context) || Responsive.isTablet(context))
                const Expanded(
                  child: SideBar(),
                ),
              if (Responsive.isMobile(context) || Responsive.isTablet(context)) mobileWidget,
              if (Responsive.isDesktop(context)) desktopWidget
            ],
          ),
        ),
      ],
    );
  }
}
