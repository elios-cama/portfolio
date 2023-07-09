import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DesktopGridWidgetOther extends StatelessWidget {
  const DesktopGridWidgetOther({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 2,
              child: AutoSizeText(
                "Rapport sur les voitures autonomes ",
                style: TextStyle(color: Theme.of(context).colorScheme.primary, fontFamily: 'Archivo', fontSize: 48),
                overflow: TextOverflow.fade,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              flex: 12,
              child: SizedBox(width: 800, child: SfPdfViewer.asset('assets/files/AC20.pdf')),
            ),
          ],
        ),
      ),
    );
  }
}
