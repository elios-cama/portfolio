import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color(0xFF1E1B1E),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Elios Cama',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ));
  }
}