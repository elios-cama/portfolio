import 'package:flutter/material.dart';
import 'package:portflolio/widgets/carousel/portfolio_carousel.dart';
import 'package:portflolio/widgets/informations/presentation_page_info.dart';
import 'package:portflolio/widgets/presentation/presentation_page_presentation.dart';
import 'package:portflolio/widgets/resume/resume_widget.dart';

import '../../../theme/constants.dart';

class MobileListWidget extends StatelessWidget {
  const MobileListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 5,
      child: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: HomePagePresentation(),
                height: 400,
              ),
              SizedBox(
                height: defaultPadding,
              ),
              HomePageInfo(),
              SizedBox(
                height: defaultPadding,
              ),
              PortfolioCarousel(),
              SizedBox(
                height: defaultPadding,
              ),
              ResumeWidget()
            ],
          ),
        ),
      ),
    );
  }
}
