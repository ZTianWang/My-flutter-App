import 'package:flutter/material.dart';
import 'message_data.dart';
import 'package:date_format/date_format.dart';
import '../../common_widgets/call_back.dart';

class MessageItem extends StatelessWidget {
  final MessageData message;
  MessageItem(this.message);

  _showNewNum() {
    if (message.newNum > 0) {
      return Text(
        message.newNum.toString(),
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlue,
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border(bottom: BorderSide(width: 0.5, color: Color(0xffd9d9d9))),
      ),
      height: 64,
      child: TouchCallBack(
          onPressed: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 13, right: 13),
                child: Image.network(
                  message.avatar,
                  width: 48,
                  height: 48,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message.title,
                      style: TextStyle(fontSize: 16, color: Color(0xff353535)),
                      maxLines: 1,
                    ),
                    Padding(padding: const EdgeInsets.only(top: 8)),
                    Text(
                      message.subtitle,
                      style: TextStyle(fontSize: 14, color: Color(0xffa9a9a9)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                margin: const EdgeInsets.only(right: 12, left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      formatDate(message.time, [hh, ":", nn, am]),
                      style: TextStyle(fontSize: 14, color: Color(0xffa9a9a9)),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 3)),
                    _showNewNum(),
                    // Text(
                    //   message.newNum.toString(),
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.bold,
                    //     color: Color.fromARGB(255, 241, 5, 5),
                    //   ),
                    // ),
                  ],
                ),
              ),
              // Container(
              //   alignment: AlignmentDirectional.topStart,
              //   margin: const EdgeInsets.only(right: 12, top: 12),
              //   child: Text(
              //     formatDate(message.time, [hh, ":", nn, am]),
              //     style: TextStyle(fontSize: 14, color: Color(0xffa9a9a9)),
              //   ),
              // ),
              // Container(
              //   alignment: AlignmentDirectional.topStart,
              //   margin: const EdgeInsets.only(right: 12, top: 20),
              //   child: Text(
              //     message.newNum.toString(),
              //     style: TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold,
              //       color: Color.fromARGB(255, 241, 5, 5),
              //     ),
              //   ),
              // ),
            ],
          )),
    );
  }
}
