import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';
import 'package:portflolio/widgets/presentation/ColoredCase.dart';

class HomePagePresentation extends StatelessWidget {
  const HomePagePresentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(top: 24, left: 16, right: 8, bottom: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color(0xFF1E1B1E),
              ),
              child: const AutoSizeText(
                "Bienvenue sur le portfolio d'Elios Cama",
                style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
                maxLines: 10, // Adjust this value based on your requirement
                overflow: TextOverflow.fade,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Expanded(
            flex: 3,
            child: Row(
              children: [
                ColoredCase(
                  color: Color(0xFF00C39A),
                  number: '6+',
                  description: "années d'expérience",
                ),
                SizedBox(
                  width: 8,
                ),
                ColoredCase(
                  color: Color(0xFFFFC03C),
                  number: '15+',
                  description: "projets scolaires",
                ),
                SizedBox(
                  width: 8,
                ),
                ColoredCase(
                  color: Color(0xFFFE6D79),
                  number: '10+',
                  description: "projets personnels",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
