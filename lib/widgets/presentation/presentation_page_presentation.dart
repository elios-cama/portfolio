import 'package:flutter/material.dart';
import 'package:portflolio/widgets/presentation/ColoredCase.dart';

class HomePagePresentation extends StatelessWidget {
  const HomePagePresentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 24, left: 16, right: 8, bottom: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: const Color(0xFF1E1B1E),
          ),
          child: const FittedBox(
            child: Text(
              "Bienvenue sur \nle portfolio \nd'Elios Cama",
              softWrap: true,
              style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ColoredCase(
              color: Color(0xFF00C39A),
              number: '6+',
              description: "années d'expérience",
            ),
            ColoredCase(
              color: Color(0xFFFFC03C),
              number: '15+',
              description: "projets scolaires",
            ),
            ColoredCase(
              color: Color(0xFFFE6D79),
              number: '10+',
              description: "projets personnels",
            ),
          ],
        ),
      ],
    );
  }
}
