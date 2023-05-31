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
      flex: 1,
      child: Row(
        children: svgIconPaths
            .map((e) => SvgPicture.asset(
                  'assets/svg/techno/$e.svg',
                  height: 40,
                  width: 40,
                ))
            .toList(),
      ),
    );
  }
}
