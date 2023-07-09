import 'package:flutter/material.dart';
import 'package:portflolio/pages/layout/responsive_layout_widget.dart';
import 'package:portflolio/theme/constants.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: ResponsiveLayoutWidget(
          mobileWidget: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: SfPdfViewer.asset(
                      'assets/files/resume.pdf',
                      enableTextSelection: true,
                      enableDoubleTapZooming: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          desktopWidget: Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Flexible(
                    flex: 2,
                    child: SfPdfViewer.asset(
                      'assets/files/resume.pdf',
                      enableTextSelection: true,
                      enableDoubleTapZooming: true,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
