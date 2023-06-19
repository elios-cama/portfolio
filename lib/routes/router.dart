import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portflolio/pages/3D_section.dart';
import 'package:portflolio/pages/home_page.dart';
import 'package:portflolio/pages/layouts/mobile_page/pages/appsolute_page.dart';
import 'package:portflolio/pages/layouts/mobile_page/pages/budgetzero_page.dart';
import 'package:portflolio/pages/layouts/mobile_page/pages/daymode_page.dart';
import 'package:portflolio/pages/layouts/mobile_page/pages/dreamnote_page.dart';
import 'package:portflolio/pages/layouts/mobile_page/pages/marmiton_page.dart';
import 'package:portflolio/pages/layouts/threeD/pages/belfort_page.dart';
import 'package:portflolio/pages/layouts/threeD/pages/halle_page.dart';
import 'package:portflolio/pages/layouts/threeD/pages/living_room_page.dart';
import 'package:portflolio/pages/mobile_section.dart';
import 'package:portflolio/pages/other_section.dart';
import 'package:portflolio/pages/web_section.dart';
import 'package:portflolio/routes/route_names.dart';

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _navigatorKey,
  routes: [
    GoRoute(path: RouteNames.home, builder: (context, state) => const HomePage()),
    GoRoute(path: RouteNames.mobile, builder: (context, state) => const MobileSection(), routes: [
      GoRoute(path: RouteNames.daymode, builder: (context, state) => const DaymodePage()),
      GoRoute(path: RouteNames.dreamnote, builder: (context, state) => const DreamNote()),
      GoRoute(path: RouteNames.budgetzero, builder: (context, state) => const BudgetZeroPage()),
    ]),
    GoRoute(path: RouteNames.web, builder: (context, state) => const WebSection()),
    GoRoute(path: RouteNames.threeD, builder: (context, state) => const Section3D(),routes: [
      GoRoute(path: RouteNames.belfort, builder: (context, state) => const BelfortPage()),
      GoRoute(path: RouteNames.halle, builder: (context, state) => const HallePage()),
      GoRoute(path: RouteNames.salon, builder: (context, state) => const LivingRoomPage()),
    ]),
    GoRoute(path: RouteNames.others, builder: (context, state) => const OtherSection()),
  ],
);
