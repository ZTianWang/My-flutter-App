import 'package:flutter/material.dart';

import './message_data.dart';
import './message_item.dart';

class MessageList extends StatelessWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageList.length,
      itemBuilder: (BuildContext context, int index) {
        return new MessageItem(messageList[index]);
      },
    );
  }
}
