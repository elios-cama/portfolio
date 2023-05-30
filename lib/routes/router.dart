import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portflolio/pages/3D_section.dart';
import 'package:portflolio/pages/home_page.dart';
import 'package:portflolio/pages/layouts/mobile_page/pages/appsolute_page.dart';
import 'package:portflolio/pages/layouts/mobile_page/pages/budgetzero_page.dart';
import 'package:portflolio/pages/layouts/mobile_page/pages/daymode_page.dart';
import 'package:portflolio/pages/layouts/mobile_page/pages/dreamnote_page.dart';
import 'package:portflolio/pages/layouts/mobile_page/pages/marmiton_page.dart';
import 'package:portflolio/pages/mobile_section.dart';
import 'package:portflolio/pages/other_section.dart';
import 'package:portflolio/pages/web_section.dart';
import 'package:portflolio/routes/route_names.dart';

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _navigatorKey,
  routes: [
    GoRoute(path: RouteNames.home, builder: (context, state) => HomePage()),
    GoRoute(path: RouteNames.mobile, builder: (context, state) => const MobileSection()),
    GoRoute(path: "${RouteNames.mobile}/daymode", builder: (context, state) => const DaymodePage()),
    GoRoute(path: "${RouteNames.mobile}/dreamnote", builder: (context, state) => const DreamNote()),
    GoRoute(path: "${RouteNames.mobile}/appsolute", builder: (context, state) => const AppsolutePage()),
    GoRoute(path: "${RouteNames.mobile}/marmiton", builder: (context, state) => const MarmitonPage()),
    GoRoute(path: "${RouteNames.mobile}/budgetzero", builder: (context, state) => const BudgetZeroPage()),
    GoRoute(path: RouteNames.web, builder: (context, state) => const WebSection()),
    GoRoute(path: RouteNames.threeD, builder: (context, state) => const Section3D()),
    GoRoute(path: RouteNames.others, builder: (context, state) => const OtherSection()),
  ],
);
