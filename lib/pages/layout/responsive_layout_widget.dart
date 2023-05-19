import 'package:flutter/material.dart';

import '../../responsive.dart';
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (Responsive.isDesktop(context) || Responsive.isTablet(context))
          const Expanded(
            child: SideBar(),
          ),
        if (Responsive.isMobile(context) || Responsive.isTablet(context)) mobileWidget,
        if (Responsive.isDesktop(context)) desktopWidget
      ],
    );
  }
}
