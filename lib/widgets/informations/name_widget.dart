import 'package:flutter/material.dart';

import '../../theme/constants.dart';

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
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        child:  const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Elios Cama',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],
        ));
  }
}
