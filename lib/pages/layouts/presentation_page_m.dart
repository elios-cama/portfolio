import 'package:flutter/material.dart';
import 'package:portflolio/widgets/carousel/portfolio_carousel.dart';
import 'package:portflolio/widgets/informations/presentation_page_info.dart';
import 'package:portflolio/widgets/presentation/presentation_page_presentation.dart';
import 'package:portflolio/widgets/resume/resume_widget.dart';

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
              height: 400,
              child: HomePagePresentation(),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: HomePageInfo(),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: const PortfolioCarousel(),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
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
