import 'package:flutter/material.dart';
import '../widgets/portfolio_carousel.dart';
import '../widgets/presentation_page_info.dart';
import '../widgets/presentation_page_presentation.dart';
import '../widgets/resume_widget.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({Key? key}) : super(key: key);

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.black),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Row(
                children: const [
                  Expanded(
                    flex: 4,
                    child: HomePagePresentation(),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 5,
                    child: HomePageInfo(),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: const [
                  PortfolioCarousel(),
                  Spacer(
                    flex: 1,
                  ),
                  ResumeWidget(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}




