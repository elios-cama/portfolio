import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portflolio/pages/side_bar/side_bar_provider.dart';
import '../../widgets/tab_button.dart';

class SideBar extends ConsumerWidget {
  const SideBar({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(sideBarIndexProvider);
    return Material(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 200,
            decoration: const BoxDecoration(
                border: Border(right: BorderSide(width: 2, color: Colors.white)), color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: const [
                  TabButton(
                    path: '',
                    svgName: 'profile',
                    content: 'A propos de moi',
                    index: 0,
                  ),
                  TabButton(
                    path: 'mobile',
                    svgName: 'mobile',
                    content: 'Mobile',
                    index: 1,
                  ),
                  TabButton(
                    path: 'web',
                    svgName: 'web',
                    content: 'Web',
                    index: 2,
                  ),
                  TabButton(
                    path: '3D',
                    svgName: '3D',
                    content: '3D',
                    index: 3,
                  ),
                  TabButton(
                    path: 'others',
                    svgName: 'others',
                    content: 'Autres',
                    index: 4,
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: child)
        ],
      ),
    );
  }
}
