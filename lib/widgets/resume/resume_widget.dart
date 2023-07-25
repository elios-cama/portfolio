import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

import '../../routes/router.dart';

class ResumeWidget extends StatelessWidget {
  const ResumeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => router.go('/resume'),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    "A propos",
                    style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 36),
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  ),
                  AutoSizeText(
                    "CV",
                    style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 36),
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Spacer(),
            Expanded(
              flex: 7,
              child: AutoSizeText(
                "Bonjour ! J'ai 22 ans et je suis un étudiant passioné par les nouvelles technologies. Je suis actuellement en Erasmus à Polytechnique Milan et recherche un stage de fin d'études pour le printemps 2024. J'aimerai allier mes connaissances en développement mobile, modélisation 3D et en IA.\nCliquer sur la case pour voir mon CV",
                style: TextStyle(color: Colors.white, fontSize: 20),
                maxLines: 10, // Adjust this value based on your requirement
                overflow: TextOverflow.fade,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
