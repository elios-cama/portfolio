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
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Theme.of(context).colorScheme.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(top: 24, left: 16, right: 8, bottom: 24),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Theme.of(context).colorScheme.primaryContainer),
              child: const Center(
                child: AutoSizeText(
                  "Bienvenue sur mon Portfolio",
                  style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                ColoredCase(
                  color: Theme.of(context).colorScheme.tertiary,
                  number: '6+',
                  description: "années\nd'expérience",
                ),
                const SizedBox(
                  width: 8,
                ),
                ColoredCase(
                  color: Theme.of(context).colorScheme.tertiary,
                  number: '15+',
                  description: "projets\nscolaires",
                ),
                const SizedBox(
                  width: 8,
                ),
                ColoredCase(
                  color: Theme.of(context).colorScheme.tertiary,
                  number: '10+',
                  description: "projets\npersonnels",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
