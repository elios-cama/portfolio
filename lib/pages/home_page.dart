import 'package:flutter/material.dart';
import 'package:portflolio/pages/layouts/desktop_layout.dart';
import 'package:portflolio/pages/layouts/responsive_layout.dart';

import 'layouts/mobile_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileLayout: MobileLayout(),
      desktopLayout: DesktopLayout(),
    );
  }
}
