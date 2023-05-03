import 'package:flutter/material.dart';

class OtherSection extends StatefulWidget {
  const OtherSection({Key? key}) : super(key: key);

  @override
  State<OtherSection> createState() => _OtherSectionState();
}

class _OtherSectionState extends State<OtherSection> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Other Page",
          style: TextStyle(color: Colors.white, fontSize: 48),
        ),
      ),
    );
  }
}
