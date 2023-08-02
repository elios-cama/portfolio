import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SchoolWidget extends StatelessWidget {
  const SchoolWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.tertiary,
        ),
        child: Column(
          children: [
             Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    "Ecole :",
                    style: TextStyle(color: Theme.of(context).colorScheme.primary, fontFamily: 'Archivo', fontSize: 20),
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  ),
                  AutoSizeText(
                    "UTBM",
                    style: TextStyle(color: Theme.of(context).colorScheme.primary, fontFamily: 'Archivo', fontSize: 20),
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              flex: 5,
              child: Container(
                color: Theme.of(context).colorScheme.tertiary,
                child: Image.asset('assets/images/map.png'),
              ),
            ),
          ],
        ));
  }
}
