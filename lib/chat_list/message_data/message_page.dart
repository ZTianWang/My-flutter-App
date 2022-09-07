import 'package:flutter/material.dart';
import 'message_data.dart';
import 'message_item.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageList.length,
        itemBuilder: (BuildContext context, int index) {
          return new MessageItem(messageList[index]);
        },
      ),
    );
  }
}
