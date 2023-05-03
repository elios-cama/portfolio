import 'package:flutter/material.dart';

class WebSection extends StatefulWidget {
  const WebSection({Key? key}) : super(key: key);

  @override
  State<WebSection> createState() => _WebSectionState();
}

class _WebSectionState extends State<WebSection> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Web page",
          style: TextStyle(color: Colors.white, fontSize: 48),
        ),
      ),
    );
  }
}
