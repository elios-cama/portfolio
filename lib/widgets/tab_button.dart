import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portflolio/pages/side_bar/side_bar_provider.dart';

import '../routes/router.dart';

class TabButton extends ConsumerWidget {
  const TabButton({super.key, required this.path, required this.svgName, required this.content, required this.index});

  final String path;
  final String svgName;
  final String content;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(sideBarIndexProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: index == selectedIndex ? Colors.white.withOpacity(0.8) : Colors.black,
          // set button text color
          elevation: 5,
          // add a shadow effect to the button
          shape: RoundedRectangleBorder(
            // add rounded borders to the button
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          router.go('/$path');
          ref.read(sideBarIndexProvider.notifier).state = index;
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/svg/$svgName.svg',
              colorFilter: const ColorFilter.mode(
                Colors.white,
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
