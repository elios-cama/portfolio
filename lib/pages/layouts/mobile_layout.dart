import 'package:flutter/material.dart';
import 'package:portflolio/pages/layouts/presentation_page_d.dart';
import 'package:portflolio/pages/layouts/presentation_page_m.dart';
import 'package:portflolio/pages/side_bar/side_bar.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      drawer: const SideBar(),
      body: const PresentationPageM(),
    );
  }
}
