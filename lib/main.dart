import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portflolio/routes/router.dart';
import 'package:portflolio/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MediaQuery(
      data: MediaQueryData.fromWindow(WidgetsBinding.instance.window),
      child: MaterialApp.router(
        title: 'Portfolio',
        debugShowCheckedModeBanner: false,
        theme: PortfolioTheme.theme(Brightness.light),
        darkTheme: PortfolioTheme.theme(Brightness.dark),
        themeMode: ThemeMode.system,
        routerConfig: router,
      ),
    );
  }
}
