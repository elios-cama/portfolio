import 'package:flutter/material.dart';
import 'package:portflolio/widgets/portfolio_carousel.dart';
import 'package:portflolio/widgets/presentation_page_info.dart';
import 'package:portflolio/widgets/presentation_page_presentation.dart';
import 'package:portflolio/widgets/resume_widget.dart';

class PresentationPageM extends StatefulWidget {
  const PresentationPageM({Key? key}) : super(key: key);

  @override
  State<PresentationPageM> createState() => _PresentationPageMState();
}

class _PresentationPageMState extends State<PresentationPageM> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: HomePagePresentation(),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: HomePageInfo(),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: PortfolioCarousel(),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ResumeWidget(),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
