import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portflolio/pages/3D_section.dart';
import 'package:portflolio/pages/other_section.dart';
import 'package:portflolio/pages/layouts/presentation_page_d.dart';
import 'package:portflolio/pages/side_bar/side_bar.dart';
import 'package:portflolio/pages/web_section.dart';

import '../mobile_section.dart';
import '../side_bar/side_bar_provider.dart';

class DesktopLayout extends ConsumerWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(sideBarIndexProvider);
    const List<Widget> pages = [PresentationPage(), MobileSection(), WebSection(), Section3D(), OtherSection()];
    return pages[pageIndex];
  }
}
