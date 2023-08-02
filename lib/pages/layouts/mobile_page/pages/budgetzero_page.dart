import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';

import '../../../layout/responsive_layout_widget.dart';
import '../../project_detail_page_desktop_layout_widget.dart';
import '../../project_detail_page_mobile_layout_widget.dart';

class BudgetZeroPage extends StatefulWidget {
  const BudgetZeroPage({Key? key}) : super(key: key);

  @override
  State<BudgetZeroPage> createState() => _BudgetZeroPage();
}

class _BudgetZeroPage extends State<BudgetZeroPage> {
  final List<String> imagePaths = [
    'assets/images/mobile/budgetZero/budget_zero_1.png',
    'assets/images/mobile/budgetZero/budget_zero_2.png',
    'assets/images/mobile/budgetZero/budget_zero_3.png',
  ];
  final List<String> svgIconPaths = [
    'kotlin',
    'git',
    'penpot',
    'linux',
    'jetbrains',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
      body: SafeArea(
        child: ResponsiveLayoutWidget(
          mobileWidget: ProjectDetailPageMobileLayoutWidget(
              imagePaths: imagePaths,
              svgIconPaths: svgIconPaths,
              title: 'BudgetZero',
              ratio: .7,
              description:
                  "Budget Zero est un projet d'application Android dans le cadre d'un projet scolaire. L'application a été développé à deux avec Kotlin. Nous avons réaliser le design UI/UX avec l'outil gratuit Penpot puis l'avons ensuite implémeneter dans l'app. Le principe est de définir un budget pour toutes ses dépenses du mois sous forme de catégories afin d'arriver à zéro euro à la fin. L'application permet d'avoir plusieurs comptes, d'enregister ses dépenses, de les visualiser et de regarder les historiques des mois précédents. "),
          desktopWidget: ProjectDetailPageDesktopLayoutWidget(
              imagePaths: imagePaths,
              svgIconPaths: svgIconPaths,
              title: 'BudgetZero',
              ratio: .7,
              description:
                  "Budget Zero est un projet d'application Android dans le cadre d'un projet scolaire. L'application a été développé à deux avec Kotlin. Nous avons réaliser le design UI/UX avec l'outil gratuit Penpot puis l'avons ensuite implémeneter dans l'app. Le principe est de définir un budget pour toutes ses dépenses du mois sous forme de catégories afin d'arriver à zéro euro à la fin. L'application permet d'avoir plusieurs comptes, d'enregister ses dépenses, de les visualiser et de regarder les historiques des mois précédents. "),
        ),
      ),
    );
  }
}
