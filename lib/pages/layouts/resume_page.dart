import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: green_1,
        body: Row(
          children: [
            const Spacer(
              flex: 1,
            ),
            Flexible(
              flex: 2,
              child: SfPdfViewer.asset('assets/files/resume.pdf',enableTextSelection: true,),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
