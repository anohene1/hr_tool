
import 'package:flutter/material.dart';
import '../utilities/utilities.dart';

class StatListItem extends StatelessWidget {

  StatListItem({@required this.title, @required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: gray))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              title
          ),
          Text(
            value,
            style: TextStyle(
                color: Colors.black54
            ),
          )
        ],
      ),
    );
  }
}

