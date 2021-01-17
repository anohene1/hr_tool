import 'package:flutter/material.dart';
import 'package:hr_tool/view/components/components.dart';
import 'package:hr_tool/view/screens/screens.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 400,
      child: Row(
        children: [
          Container(
            width: 450,
            child: StatsScreen(),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
            ),
          ),
          HorizontalSpacing(10),
          Container(
            width: 450,
            child: VacanciesScreen(),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
            ),
          ),
          HorizontalSpacing(10),
          Container(
            width: 450,
            child: MessagingScreen(),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
            ),
          ),
        ],
      ),
    );
  }
}
