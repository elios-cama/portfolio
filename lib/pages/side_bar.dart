import 'package:flutter/material.dart';
import 'package:portflolio/routes/router.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 200,
            decoration:
                const BoxDecoration(border: Border(right: BorderSide(width: 2, color: Colors.white)), color: Colors.black),
            child: Column(
              children: [
                ElevatedButton.icon(
                  // <-- ElevatedButton
                  onPressed: () {
                    router.go('/');
                  },
                  icon: const Icon(
                    Icons.download,
                    size: 24.0,
                  ),
                  label: const Text('A Propos'),
                ),
                ElevatedButton.icon(
                  // <-- ElevatedButton
                  onPressed: () {
                    router.go('/mobile');
                  },
                  icon: const Icon(
                    Icons.download,
                    size: 24.0,
                  ),
                  label: const Text('Mobile'),
                ),
                ElevatedButton.icon(
                  // <-- ElevatedButton
                  onPressed: () {
                    router.go('/web');
                  },
                  icon: const Icon(
                    Icons.download,
                    size: 24.0,
                  ),
                  label: const Text('Web'),
                ),
                ElevatedButton.icon(
                  // <-- ElevatedButton
                  onPressed: () {
                    router.go('/3D');
                  },
                  icon: const Icon(
                    Icons.download,
                    size: 24.0,
                  ),
                  label: const Text('3D'),
                ),
                ElevatedButton.icon(
                  // <-- ElevatedButton
                  onPressed: () {
                    router.go('/others');
                  },
                  icon: const Icon(
                    Icons.download,
                    size: 24.0,
                  ),
                  label: const Text('Autres'),
                )
              ],
            ),
          ),
          Expanded(child: widget.child)
        ],
      ),
    );
  }
}
