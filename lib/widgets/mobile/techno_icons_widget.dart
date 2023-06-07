import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TechnoIconsWidget extends StatelessWidget {
  const TechnoIconsWidget({
    super.key,
    required this.svgIconPaths,
  });

  final List<String> svgIconPaths;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: svgIconPaths
            .map((e) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SvgPicture.asset(
                    'assets/svg/techno/$e.svg',
                    height: 40,
                    width: 40,
                  ),
            ))
            .toList(),
      ),
    );
  }
}
