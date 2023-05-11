import 'package:flutter/material.dart';

class SchoolNameWidget extends StatelessWidget {
  const SchoolNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xFF1E1B1E),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            child: Text(
              "Ecole:",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
          ),
          FittedBox(
            child: Text(
              "UTBM",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
