import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portflolio/pages/3D_section.dart';
import 'package:portflolio/pages/home_page.dart';
import 'package:portflolio/pages/mobile_section.dart';
import 'package:portflolio/pages/other_section.dart';
import 'package:portflolio/pages/web_section.dart';
import 'package:portflolio/routes/route_names.dart';

import '../pages/layouts/presentation_page_d.dart';

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _navigatorKey,
  routes: [
    GoRoute(path: RouteNames.home, builder: (context, state) => const HomePage()),
    GoRoute(path: RouteNames.presentation, builder: (context, state) => const PresentationPage()),
    GoRoute(path: RouteNames.mobile, builder: (context, state) => const MobileSection()),
    GoRoute(path: RouteNames.web, builder: (context, state) => const WebSection()),
    GoRoute(path: RouteNames.threeD, builder: (context, state) => const Section3D()),
    GoRoute(path: RouteNames.others, builder: (context, state) => const OtherSection()),
  ],
);
