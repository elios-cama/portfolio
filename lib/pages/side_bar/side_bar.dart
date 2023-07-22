import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portflolio/pages/side_bar/side_bar_provider.dart';
import '../../main.dart';
import '../../widgets/sideBar/drawer_list_tile.dart';

class SideBar extends ConsumerWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(sideBarIndexProvider);
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: CircleAvatar(
              radius: (80),
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  "assets/images/elios.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
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
          Consumer(builder: (context, ref, child) {
            final theme = ref.watch(themeModeProvider);
            return ListTile(
              onTap: () {
                ref.read(themeModeProvider.notifier).state =
                    theme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
              },
              horizontalTitleGap: 0.0,
              leading: SvgPicture.asset(
                theme == ThemeMode.dark ? 'assets/svg/leaf.svg' : 'assets/svg/drop.svg',
                colorFilter: ColorFilter.mode(
                    theme == ThemeMode.dark
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn),
                height: 16,
                width: 16,
                fit: BoxFit.scaleDown,
              ),
              title: AutoSizeText(
                "Changer de thème",
                maxLines: 2,
                style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 18),
              ),
            );
          }),
        ],
      ),
    );
  }
}
