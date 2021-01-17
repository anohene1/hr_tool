import 'package:flutter/material.dart';
import 'components.dart';
import '../utilities/utilities.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    this.title,
    this.icon,
    this.actions,
  });

  final String title;
  final IconData icon;
  final List<IconButton> actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1, color: gray),
      )),
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(icon, size: 18,),
          HorizontalSpacing(10),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 17),
            ),
          ),
          Container(
            height: 30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [...actions],
            ),
          )
        ],
      ),
    );
  }
}
