import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portflolio/pages/side_bar/side_bar_provider.dart';

import '../../routes/router.dart';

class DrawerListTile extends ConsumerWidget {
  const DrawerListTile(
      {super.key, required this.svgName, required this.content, required this.index, required this.path});

  final String svgName;
  final String content;
  final int index;
  final String path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(sideBarIndexProvider);
    return ListTile(
      onTap: () {
        ref.read(sideBarIndexProvider.notifier).state = index;
        router.go('/$path');
      },
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        'assets/svg/$svgName.svg',
        colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        content,
        style: TextStyle(color: index == selectedIndex ? Colors.blue.shade800 : Colors.white54),
      ),
    );
  }
}