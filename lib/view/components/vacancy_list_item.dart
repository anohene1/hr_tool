import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../utilities/utilities.dart';
import 'components.dart';

class VacancyListItem extends StatefulWidget {

  VacancyListItem({
    this.time,
    this.successRate,
    this.title,
    this.isActive = false,
  });

  final String title;
  final String time;
  final int successRate;
  bool isActive;

  @override
  _VacancyListItemState createState() => _VacancyListItemState();
}

class _VacancyListItemState extends State<VacancyListItem> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (PointerHoverEvent evt) {
        setState(() {
          widget.isActive = true;
        });
      },
      onExit: (PointerExitEvent evt) {
        setState(() {
          widget.isActive = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: widget.isActive ? Border.all(width: 2, color: purple) : null
        ),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: yellow,
                  borderRadius: BorderRadius.circular(8)
              ) ,
              child: Center(
                child: Text(
                  '\\',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                ),
              ),
            ),
            HorizontalSpacing(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  VerticalSpacing(10),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${widget.successRate}% Success Rate',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12
                          ),
                        ),
                        Text(
                          widget.time,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}