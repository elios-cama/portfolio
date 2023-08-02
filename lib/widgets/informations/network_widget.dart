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
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.tertiary,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconCircle(
            path: 'linkedin', url: 'https://www.linkedin.com/in/elios-cama/',
          ),
          IconCircle(
            path: 'github', url: 'https://github.com/elios-cama',
          ),
          IconCircle(
            path: 'stackoverflow', url: 'https://stackoverflow.com/users/14163640/elios-cama',
          ),
          IconCircle(
            path: 'gmail', url: '',
          ),
        ],
      ),
    );
  }
}
