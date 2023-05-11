import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../widgets/sideBar/drawer_list_tile.dart';

class SideBar extends ConsumerWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerListTile(
            svgName: 'profile',
            content: 'A propos de moi',
            index: 0,
          ),
          DrawerListTile(
            svgName: 'mobile',
            content: 'Mobile',
            index: 1,
          ),
          DrawerListTile(
            svgName: 'web',
            content: 'Web',
            index: 2,
          ),
          DrawerListTile(
            svgName: '3D',
            content: '3D',
            index: 3,
          ),
          DrawerListTile(
            svgName: 'others',
            content: 'Autres',
            index: 4,
          ),
        ],
      ),
    );
  }
}
