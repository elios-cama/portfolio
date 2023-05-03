import 'package:flutter/material.dart';

class Section3D extends StatefulWidget {
  const Section3D({Key? key}) : super(key: key);

  @override
  State<Section3D> createState() => _Section3DState();
}

class _Section3DState extends State<Section3D> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "3D page",
          style: TextStyle(color: Colors.white, fontSize: 48),
        ),
      ),
    );
  }
}
