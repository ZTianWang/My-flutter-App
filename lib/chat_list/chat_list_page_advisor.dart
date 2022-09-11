import 'package:flutter/material.dart';
import 'package:getskills_flutter/chat_list/message_data/message_list.dart';
import 'package:getskills_flutter/common_widgets/header.dart';

class AdvisorChatListPage extends StatelessWidget {
  const AdvisorChatListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              const Header(),
              Container(
                alignment: Alignment.centerLeft,
                height: 25,
                margin: const EdgeInsets.only(left: 23, bottom: 10, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'History',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff90A3BF),
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
              child: const MessageList(),
            ),
          ),
        ],
      ),
    );
  }
}
