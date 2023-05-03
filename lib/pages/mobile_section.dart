import 'package:flutter/material.dart';

class MobileSection extends StatefulWidget {
  const MobileSection({Key? key}) : super(key: key);

  @override
  State<MobileSection> createState() => _MobileSectionState();
}

class _MobileSectionState extends State<MobileSection> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Mobile Page",
          style: TextStyle(color: Colors.white, fontSize: 48),
        ),
      ),
    );
  }
}
