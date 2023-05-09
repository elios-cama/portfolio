import 'package:flutter/material.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Flexible(
          flex: 1,
          child: NameWidget(),
        ),
        const SizedBox(
          height: 8,
        ),
        Flexible(
          flex: 6,
          child: Row(
            children: const [
              PictureWidget(),
              SizedBox(
                width: 8,
              ),
              InfoColumnWidget()
            ],
          ),
        )
      ],
    );
  }
}

class InfoColumnWidget extends StatelessWidget {
  const InfoColumnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: const [
          Expanded(
            flex: 1,
            child: SchoolNameWidget(),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            flex: 3,
            child: MapWidget(),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            flex: 1,
            child: NetworksWidget(),
          ),
        ],
      ),
    );
  }
}





