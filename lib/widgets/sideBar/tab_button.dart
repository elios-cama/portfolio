import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portflolio/pages/side_bar/side_bar_provider.dart';

import '../../routes/router.dart';

class TabButton extends ConsumerWidget {
  const TabButton({super.key, required this.svgName, required this.content, required this.index});

  final String svgName;
  final String content;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(sideBarIndexProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextButton(
        onPressed: () {
          ref.read(sideBarIndexProvider.notifier).state = index;
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/svg/$svgName.svg',
              colorFilter: ColorFilter.mode(
                index == selectedIndex ? const Color(0xFFC3DBC5) : const Color(0xFF7EA172),
                BlendMode.srcIn,
              ),
              height: 30,
            ),
            Text(
              content,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
