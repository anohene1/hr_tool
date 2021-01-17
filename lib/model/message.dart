import 'package:hr_tool/model/contact.dart';

class Message {
  Message(
      {this.message,
      this.sender,
      this.time,
      this.isRead = true,
      this.isSent = false,
        this.isHovered = false,
      });

  final String message;
  final Contact sender;
  final String time;
  bool isRead;
  bool isSent;
  bool isHovered;
}

List<Message> allMessages = [
  Message(
    message: 'Please take a look at the CV',
    sender: allContacts[0],
    isRead: false,
    time: 'now'
  ),
  Message(
    message: "Yes, that's gonna work. Hopefully",
    sender: allContacts[1],
    time: '06:12'
  ),
  Message(
    message: 'Thanks',
    sender: allContacts[2],
    isSent: true,
    time: 'Yesterday'
  ),
  Message(
    message: "I'm happy you got selected!",
    sender: allContacts[3],
    time: '2d'
  )
];
