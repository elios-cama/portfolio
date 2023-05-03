import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portflolio/pages/3D_section.dart';
import 'package:portflolio/pages/mobile_section.dart';
import 'package:portflolio/pages/other_section.dart';
import 'package:portflolio/pages/side_bar.dart';
import 'package:portflolio/pages/web_section.dart';
import 'package:portflolio/routes/route_names.dart';

import '../pages/home_page.dart';

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _navigatorKey,
  routes: [
    ShellRoute(
      builder: (context, state, child) => SideBar(
        child: child,
      ),
      routes: [
        GoRoute(path: RouteNames.home, builder: (context, state) => const HomePage()),
        GoRoute(path: RouteNames.mobile, builder: (context, state) => const MobileSection()),
        GoRoute(path: RouteNames.web, builder: (context, state) => const WebSection()),
        GoRoute(path: RouteNames.threeD, builder: (context, state) => const Section3D()),
        GoRoute(path: RouteNames.others, builder: (context, state) => const OtherSection()),
      ],
    ),
  ],
);
