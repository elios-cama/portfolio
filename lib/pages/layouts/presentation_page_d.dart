import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

import '../../responsive.dart';
import '../../widgets/carousel/portfolio_carousel.dart';
import '../../widgets/informations/presentation_page_info.dart';
import '../../widgets/presentation/presentation_page_presentation.dart';
import '../../widgets/resume/resume_widget.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({Key? key}) : super(key: key);

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      HomePagePresentation(),
                      PortfolioCarousel(),
                    ],
                  ),
                ),
                if (Responsive.isDesktop(context))
                  const SizedBox(
                    width: defaultPadding,
                  ),
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: const [
                        HomePageInfo(),
                        ResumeWidget(),
                      ],
                    ),
                  )
              ],
            ),
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              const SizedBox(
                height: defaultPadding,
              ),
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              Column(
                children: const [
                  HomePageInfo(),
                  ResumeWidget(),
                ],
              )
          ],
        ),
      ),
    );
  }
}
