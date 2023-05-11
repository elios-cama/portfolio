import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portflolio/pages/side_bar/side_bar_provider.dart';

import '../../routes/router.dart';

class DrawerListTile extends ConsumerWidget {
  const DrawerListTile({super.key, required this.svgName, required this.content, required this.index});

  final String svgName;
  final String content;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(sideBarIndexProvider);
    return ListTile(
      onTap: () {
        ref.read(sideBarIndexProvider.notifier).state = index;
      },
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        'assets/svg/$svgName.svg',
        colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        content,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
