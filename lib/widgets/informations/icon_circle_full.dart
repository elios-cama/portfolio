import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class IconCircleFull extends StatelessWidget {
  const IconCircleFull({
    super.key,
    required this.path,
    required this.url,
  });

  final String path;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final Uri uri = Uri.parse(url);
        if (!await launchUrl(uri)) {
          throw Exception('Could not launch $uri');
        }
      },
      child: ClipRRect(
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
      ),
    );
  }
}
