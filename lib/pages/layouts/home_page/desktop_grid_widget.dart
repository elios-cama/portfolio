import 'package:flutter/material.dart';
import 'package:portflolio/widgets/carousel/portfolio_carousel.dart';
import 'package:portflolio/widgets/informations/presentation_page_info.dart';
import 'package:portflolio/widgets/presentation/presentation_page_presentation.dart';
import 'package:portflolio/widgets/resume/resume_widget.dart';

import '../../../theme/constants.dart';

class DesktopGridWidget extends StatelessWidget {
  const DesktopGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Column(
                children: const [
                  Expanded(
                    flex: 3,
                    child: HomePagePresentation(),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Expanded(
                    flex: 2,
                    child: PortfolioCarousel(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: const [
                  Expanded(flex: 4,child: HomePageInfo(),),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Expanded(flex: 4,child: ResumeWidget(),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}