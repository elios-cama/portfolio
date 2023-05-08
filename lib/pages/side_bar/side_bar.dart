import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../widgets/tab_button.dart';

class SideBar extends ConsumerWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 200,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              TabButton(
                svgName: 'profile',
                content: 'A propos de moi',
                index: 0,
              ),
              TabButton(
                svgName: 'mobile',
                content: 'Mobile',
                index: 1,
              ),
              TabButton(
                svgName: 'web',
                content: 'Web',
                index: 2,
              ),
              TabButton(
                svgName: '3D',
                content: '3D',
                index: 3,
              ),
              TabButton(
                svgName: 'others',
                content: 'Autres',
                index: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
