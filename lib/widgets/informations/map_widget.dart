import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({
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
            const Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    "Basé à:",
                    style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 24),
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  ),
                  AutoSizeText(
                    "Belfort",
                    style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 24),
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              flex: 4,
              child: Container(
                color: Theme.of(context).colorScheme.tertiary,
                child: Image.asset('assets/images/map.png'),
              ),
            ),
          ],
        ));
  }
}
