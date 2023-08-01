import 'package:flutter/material.dart';
import 'package:portflolio/widgets/carousel/portfolio_carousel.dart';
import 'package:portflolio/widgets/informations/presentation_page_info.dart';
import 'package:portflolio/widgets/presentation/presentation_page_presentation.dart';
import 'package:portflolio/widgets/resume/resume_widget.dart';

import '../../../responsive.dart';
import '../../../theme/constants.dart';

class MobileListWidget extends StatelessWidget {
  const MobileListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: Responsive.isTablet(context) ? 400 : 300,
                child: HomePagePresentation(),
              ),
              SizedBox(
                height: defaultPadding,
              ),
              SizedBox(
                height: Responsive.isTablet(context) ? 400 : 300,
                child: HomePageInfo(),
              ),
              SizedBox(
                height: defaultPadding,
              ),
              SizedBox(
                height: Responsive.isTablet(context) ? 300 : 200,
                child: PortfolioCarousel(),
              ),
              SizedBox(
                height: defaultPadding,
              ),
              SizedBox(
                height: Responsive.isTablet(context) ? 300 : 300,
                child: ResumeWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
