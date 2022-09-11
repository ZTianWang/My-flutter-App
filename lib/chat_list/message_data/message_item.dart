import 'package:flutter/material.dart';
import 'message_data.dart';
import 'package:date_format/date_format.dart';
import '../../common_widgets/call_back.dart';

class MessageItem extends StatelessWidget {
  final MessageData message;
  MessageItem(this.message);

  _showNewNum() {
    if (message.newNum > 0) {
      return Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0), color: Colors.red),
          child: Center(
            child: Text(
              message.newNum.toString(),
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image(
            width: 55,
            height: 55,
            image: NetworkImage(message.avatar),
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 25),
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  message.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  message.contant,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                  maxLines: 2,
                ),
              ]),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(formatDate(message.time, [hh, ":", nn, am]),
                style: const TextStyle(color: Colors.grey)),
            const Padding(padding: EdgeInsets.only(top: 5)),
            _showNewNum(),
          ],
        ),
      ]),
    );
  }
}
