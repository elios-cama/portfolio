import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class IconCircle extends StatelessWidget {
  const IconCircle({
    super.key,
    required this.path, required this.url,
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
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary, shape: BoxShape.circle),
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
      ),
    );
  }
}
