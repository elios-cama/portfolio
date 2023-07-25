import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../theme/constants.dart';

class SchoolNameWidget extends StatelessWidget {
  const SchoolNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            "Ecole:",
            style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 20),
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
          ),
          AutoSizeText(
            "UTBM",
            style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 24),
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
