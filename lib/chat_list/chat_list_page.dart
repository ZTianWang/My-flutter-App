import 'package:flutter/material.dart';
import 'package:getskills_flutter/chat_list/message_data/message_data.dart';
import 'package:getskills_flutter/chat_list/message_data/message_list.dart';
import '../common_widgets/call_back.dart';
import './message_data/message_data.dart';
import './message_data/message_item.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              TouchCallBack(
                isfeed: false,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 30.0,
                  margin: const EdgeInsets.only(top: 5.0, left: 12.0),
                  child: const Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 25,
                margin: const EdgeInsets.only(left: 38, bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'History enquiries',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
              height: 400.0,
              child: MessageList(),
            ),
          ),
        ],
      ),
    );
  }
}
