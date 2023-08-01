import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


class CityNameWidget extends StatelessWidget {
  const CityNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            "Basé à :",
            style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 20),
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
          ),
          AutoSizeText(
            "Belfort",
            style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 20),
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
