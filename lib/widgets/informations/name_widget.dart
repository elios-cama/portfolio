import 'package:auto_size_text/auto_size_text.dart';
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
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child:   const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AutoSizeText(
              "Elios Cama",
              style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 36),
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
