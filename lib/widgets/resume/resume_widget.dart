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
      onTap: ()=>router.go('/resume'),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: green_6,
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
                   Text(
                    'A propos',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "CV",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Expanded(
              flex: 7,
              child:  AutoSizeText(
                "Bonjour ! J'ai 22 ans et je suis un étudiant passioné par les nouvelles technologies. Je suis actuellement en Erasmus à Polytechnique Milan et recherche un stage de fin d'études pour le printemps 2024. J'aimerai allier mes connaissances en développement mobile, modélisation 3D et en IA.\nCliquer sur la case pour voir mon CV",
                style: TextStyle(color: Colors.white, fontSize: 22),
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
