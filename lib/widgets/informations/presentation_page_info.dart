import 'package:flutter/material.dart';
import 'package:portflolio/theme/constants.dart';
import 'package:portflolio/widgets/informations/picture_case.dart';
import 'package:portflolio/widgets/informations/school_widget.dart';
import 'map_widget.dart';
import 'name_widget.dart';
import 'network_widget.dart';

class HomePageInfo extends StatelessWidget {
  const HomePageInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 8, bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const NameWidget(),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: const [
              PictureWidget(),
              SizedBox(
                width: 8,
              ),
              InfoColumnWidget()
            ],
          )
        ],
      ),
    );
  }
}

class InfoColumnWidget extends StatelessWidget {
  const InfoColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SchoolNameWidget(),
        SizedBox(
          height: 8,
        ),
        MapWidget(),
        SizedBox(
          height: 8,
        ),
        NetworksWidget(),
      ],
    );
  }
}