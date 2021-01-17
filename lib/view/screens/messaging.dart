import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_tool/model/message.dart';
import 'package:hr_tool/model/vacancy.dart';
import 'package:hr_tool/view/components/message_list_item.dart';
import '../utilities/utilities.dart';
import '../components/components.dart';


var messages = allMessages;

class MessagingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Messaging',
                icon: CupertinoIcons.conversation_bubble,
                actions: [
                  IconButton(
                    icon: Icon(CupertinoIcons.search, color: Colors.black54, size: 17,),
                    onPressed: (){},
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert, color: Colors.black54, size: 20,),
                    onPressed: (){},
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      var message = messages[index];
                      return MessageListItem(message: message);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

