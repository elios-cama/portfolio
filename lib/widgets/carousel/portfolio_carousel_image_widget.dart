import 'package:flutter/material.dart';

import '../../pages/home_page.dart';

class CarouselImageWidget extends StatelessWidget {
  const CarouselImageWidget({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          scaffoldKey.currentState?.openDrawer();
          print("iub");
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: AssetImage('assets/images/mobile/$path'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
