import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SchoolNameWidget extends StatelessWidget {
  const SchoolNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xFF1E1B1E),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            "Ecole:",
            style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
          ),
          AutoSizeText(
            "UTBM",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
