import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';

class ColoredCase extends StatelessWidget {
  const ColoredCase({
    super.key,
    required this.color,
    required this.number,
    required this.description,
  });

  final Color color;
  final String number;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer(builder: (context, ref, child) {
        final theme = ref.watch(themeModeProvider);
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: color,
          ),
          child: Stack(children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    opacity: theme == ThemeMode.dark? .1:.4,
                    scale: theme == ThemeMode.dark? 2 :5,
                    image: AssetImage(
                      theme == ThemeMode.dark
                          ? 'assets/images/olive.png'
                          : 'assets/images/coffee.png',
                    ),
                    repeat: ImageRepeat.repeat,
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    number,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Archivo',
                      fontSize: 32,
                    ),
                    maxLines: 1,
                    presetFontSizes: const [
                      32,
                      28,
                      24,
                      20,
                    ],
                  ),
                  const SizedBox(height: 8),
                  AutoSizeText(
                    description,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Archivo',
                        fontSize: 16),
                    // Adjust the font size as needed
                    maxLines: 2,
                    presetFontSizes: [16, 14, 12, 10],
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ]),
        );
      }),
    );
  }
}
