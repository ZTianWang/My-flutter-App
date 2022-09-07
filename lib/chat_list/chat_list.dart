import 'package:flutter/material.dart';
import 'package:getskills_flutter/chat_list/message_data/message_data.dart';
import '../common_widgets/call_back.dart';
import './message_data/message_data.dart';
import './message_data/message_item.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                TouchCallBack(
                  isfeed: false,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45.0,
                    margin: const EdgeInsets.only(left: 12, right: 10),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45,
                  margin: const EdgeInsets.only(left: 50, right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'History Enquiries',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new MessageItem(messageList[0]),
                  new MessageItem(messageList[1]),
                  new MessageItem(messageList[2]),
                  new MessageItem(messageList[3]),
                  new MessageItem(messageList[4]),
                ],
              ),
              // child: new MessageItem(messageList[0]),
            ),
            // ListView.builder(
            //   itemCount: messageList.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return new MessageItem(messageList[index]);
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
