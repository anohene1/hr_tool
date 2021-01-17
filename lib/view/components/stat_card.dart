import 'package:flutter/material.dart';
import 'package:hr_tool/view/utilities/utilities.dart';
import 'components.dart';

class StatCard extends StatelessWidget {

  StatCard({
    this.title,
    this.number,
    this.desc,
    this.increment,
    this.icon,
    this.isPercent = false,
    this.hasIncrement = false,
    this.color,
    this.hasBackgroundColor = false
  });

  final String title;
  final double number;
  final String desc;
  final double increment;
  final IconData icon;
  bool isPercent;
  bool hasIncrement;
  final Color color;
  bool hasBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
          color: hasBackgroundColor ? color.withOpacity(0.07) : null,
          borderRadius: BorderRadius.circular(10),
        border: hasBackgroundColor ? null : Border.all(width: 1, color: gray)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: color.withOpacity(0.1)
                ),
                child: Center(
                  child: Icon(
                    icon,
                    size: 15,
                    color: color,
                  ),
                ),
              )
            ],
          ),
          VerticalSpacing(29),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '$number${isPercent ? '%' : ''}',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  hasIncrement ? Icon(Icons.arrow_drop_up, size: 30, color: color,) : SizedBox.shrink(),
                  hasIncrement
                      ? Text(
                    '$increment%',
                    style: TextStyle(
                        fontSize: 13,
                      color: color
                    ),
                  )
                      : SizedBox.shrink()
                ],
              ),
              VerticalSpacing(5),
              Text(
                  desc,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black54
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

