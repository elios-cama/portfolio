import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconCircleFull extends StatelessWidget {
  const IconCircleFull({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: FittedBox(
        fit: BoxFit.contain,
        child: SvgPicture.asset(
          "assets/svg/$path.svg",
          height: 36,
          width: 36,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
