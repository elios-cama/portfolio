import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconCircle extends StatelessWidget {
  const IconCircle({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(color: Colors.grey.shade900, shape: BoxShape.circle),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Center(
          child: SvgPicture.asset(
            "assets/svg/$path.svg",
            height: 32,
            width: 32,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
