import 'package:flutter/material.dart';
import 'package:portflolio/pages/layouts/desktop_layout.dart';
import 'package:portflolio/pages/side_bar/side_bar.dart';

import '../responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)|| Responsive.isTablet(context))
              const Expanded(
                child: SideBar(),
              ),
            const Expanded(
              flex: 5,
              child: DesktopLayout(),
            ),
          ],
        ),
      ),
    );
  }
}
