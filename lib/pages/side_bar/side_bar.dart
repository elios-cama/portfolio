import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portflolio/pages/side_bar/side_bar_provider.dart';
import '../../widgets/sideBar/drawer_list_tile.dart';

class SideBar extends ConsumerWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(sideBarIndexProvider);
    return Drawer(
      width: 300,
      child: ListView(
        children: [
          DrawerHeader(
            child: CircleAvatar(radius: (80),
                backgroundColor: Colors.transparent,
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(18),
                  child: Image.asset("assets/images/elios.jpg", fit: BoxFit.fill,),
                )
            )
          ),
          const DrawerListTile(
            svgName: 'profile',
            content: 'A propos de moi',
            index: 0,
            path: '',
          ),
          const DrawerListTile(
            svgName: 'mobile',
            content: 'Mobile',
            index: 1,
            path: 'mobile',
          ),
          const DrawerListTile(
            svgName: 'web',
            content: 'Web',
            index: 2,
            path: 'web',
          ),
          const DrawerListTile(
            svgName: '3D',
            content: '3D',
            index: 3,
            path: '3D',
          ),
          const DrawerListTile(
            svgName: 'others',
            content: 'Autres',
            index: 4,
            path: 'others',
          ),
        ],
      ),
    );
  }
}
