import 'package:flutter/material.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color(0xFF1E1B1E),
          image: const DecorationImage(
            image: AssetImage('assets/images/elios.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}