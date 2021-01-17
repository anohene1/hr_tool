import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hr_tool/model/message.dart';
import 'package:hr_tool/view/components/components.dart';
import 'package:hr_tool/view/utilities/utilities.dart';

class MessageListItem extends StatefulWidget {
  const MessageListItem({
    Key key,
    @required this.message,
  }) : super(key: key);

  final Message message;

  @override
  _MessageListItemState createState() => _MessageListItemState();
}

class _MessageListItemState extends State<MessageListItem> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (PointerHoverEvent evt) {
        setState(() {
          widget.message.isHovered = true;
        });
      },
      onExit: (PointerExitEvent evt) {
        setState(() {
          widget.message.isHovered = false;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: widget.message.isHovered ? purple.withOpacity(0.05) : null,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(500),
                    child: Image.asset(
                        widget.message.sender.profilePicture,
                        fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: widget.message.sender.isOnline ? Colors.green : Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 2, color: Colors.white)
                    ),
                  ),
                )
              ],
            ),
            HorizontalSpacing(20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.message.sender.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  VerticalSpacing(10),
                  Container(
                    child: Row(
                      children: [
                        widget.message.isSent ? Icon(Icons.check, color: Colors.black26, size: 15,) : SizedBox.shrink(),
                        widget.message.isSent ? HorizontalSpacing(5) : SizedBox.shrink(),
                        Expanded(
                          child: Text(
                            widget.message.message,
                            style: TextStyle(
                                color: Colors.black54,
                              fontSize: 12
                            ),
                          ),
                        ),
                        widget.message.isRead ? Text(
                          widget.message.time,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12
                          ),
                        ) : SizedBox.shrink()
                      ],
                    ),
                  )
                ],
              ),
            ),
            widget.message.isRead ? SizedBox.shrink() : CircleAvatar(
              backgroundColor: purple,
              radius: 10,
              child: Text(
                '2',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}