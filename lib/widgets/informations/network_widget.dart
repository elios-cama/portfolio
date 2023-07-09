import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

import 'icon_circle.dart';
import 'icon_circle_full.dart';

class NetworksWidget extends StatelessWidget {
  const NetworksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconCircleFull(
            path: 'linkedin',
          ),
          IconCircleFull(
            path: 'github',
          ),
          IconCircle(
            path: 'stackoverflow',
          ),
          IconCircle(
            path: 'gmail',
          ),
        ],
      ),
    );
  }
}
