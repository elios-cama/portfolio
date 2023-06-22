import 'package:flutter/material.dart';
import '../../routes/router.dart';

class CarouselImageWidget extends StatelessWidget {
  const CarouselImageWidget({
    super.key,
    required this.image_path,
    required this.route_path,
  });

  final String image_path;
  final String route_path;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => router.go('/mobile/$route_path'),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: AssetImage('assets/images/mobile/$image_path'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
