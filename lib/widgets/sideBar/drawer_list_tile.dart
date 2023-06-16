import 'package:auto_size_text/auto_size_text.dart';
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
        width: 16,
        fit: BoxFit.scaleDown,
      ),
      title: AutoSizeText(
        content,
        maxLines: 2,
        style: TextStyle(color: index == selectedIndex ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary),
      ),
    );
  }
}
