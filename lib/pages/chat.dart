// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late TextEditingController textEditingController;
  late final ScrollController _scrollController =
      ScrollController(); //listview的控制器
  late double contentMaxWidth;

  late String userName = 'USER_NAME';
  late String userId = '123456';

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    contentMaxWidth = MediaQuery.of(context).size.width - 90;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(userName),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFF1F5FB),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                //列表内容少的时候靠上
                alignment: Alignment.topCenter,
                child: _renderList(),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                      constraints: const BoxConstraints(
                        maxHeight: 100.0,
                        minHeight: 50.0,
                      ),
                      decoration: const BoxDecoration(
                          color: Color(0xFFF5F6FF),
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                      child: TextField(
                        controller: textEditingController,
                        cursorColor: const Color(0xFF464EB5),
                        maxLines: null,
                        maxLength: 200,
                        decoration: const InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 10.0, bottom: 10.0),
                          hintText: "Reply",
                          hintStyle:
                              TextStyle(color: Color(0xFFADB3BA), fontSize: 15),
                        ),
                        style: const TextStyle(
                            color: Color(0xFF03073C), fontSize: 15),
                      ),
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      alignment: Alignment.center,
                      height: 70,
                      child: const Text(
                        'Send',
                        style: TextStyle(
                          color: Color(0xFF464EB5),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    onTap: () {
                      sendTxt();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List list = [
    {
      "createdAt": "2021-07-01 10:00:00",
      "userId": "123456",
      "name": "John Doe",
      // "orderNo": widget.orderNo,
      "reply": "Hello, I'm John Doe",
      "updatedAt": "2021-07-01 10:00:00",
      'status': SENDING_TYPE,
      'tag': 00000,
    },
    {
      "createdAt": "2022-07-01 10:00:00",
      "userId": "654321",
      "name": "Jane Doe",
      // "orderNo": widget.orderNo,
      "reply": "Hello, I'm Jane Doe",
      "updatedAt": "2022-07-01 10:00:00",
      'status': SENDING_TYPE,
      'tag': 11111,
    }
  ]; //列表要展示的数据

  _renderList() {
    return GestureDetector(
      child: ListView.builder(
        reverse: true,
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 27),
        itemBuilder: (context, index) {
          var item = list[index];
          return GestureDetector(
            child: item['userId'] == userId
                ? _renderRowSendByMe(context, item)
                : _renderRowSendByOthers(context, item),
            onTap: () {},
          );
        },
        itemCount: list.length,
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
    );
  }

  Widget _renderRowSendByOthers(BuildContext context, item) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              // CommonUtils.timeStampFormat(item['createdAt']),
              item['createdAt'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFFA1A6BB),
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 45),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Color(0xFF464EB5),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      item['name'].toString().substring(0, 1),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 30),
                        child: Text(
                          item['name'],
                          softWrap: true,
                          style: const TextStyle(
                            color: Color(0xFF677092),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          // Container(
                          //   margin: const EdgeInsets.fromLTRB(2, 16, 0, 0),
                          //   child: const Image(
                          //       width: 11,
                          //       height: 20,
                          //       image: AssetImage(
                          //           "static/images/chat_white_arrow.png")),
                          // ),
                          Container(
                            decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(4.0, 7.0),
                                    color: Color(0x04000000),
                                    blurRadius: 10,
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            margin: const EdgeInsets.only(top: 8, left: 10),
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              item['reply'],
                              style: const TextStyle(
                                color: Color(0xFF03073C),
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderRowSendByMe(BuildContext context, item) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              // CommonUtils.timeStampFormat(item['createdAt']),
              item['createdAt'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFFA1A6BB),
                fontSize: 14,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: 15),
                alignment: Alignment.center,
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    color: Color(0xFF464EB5),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Text(
                    item['name'].toString().substring(0, 1),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      item['name'],
                      softWrap: true,
                      style: const TextStyle(
                        color: Color(0xFF677092),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      // Container(
                      //   margin: const EdgeInsets.fromLTRB(0, 16, 2, 0),
                      //   child: const Image(
                      //       width: 11,
                      //       height: 20,
                      //       image: AssetImage(
                      //           "static/images/chat_purple_arrow.png")),
                      // ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: contentMaxWidth,
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(top: 8, right: 10),
                              decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(4.0, 7.0),
                                      color: Color(0x04000000),
                                      blurRadius: 10,
                                    ),
                                  ],
                                  color: Color(0xFF838CFF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                item['reply'],
                                softWrap: true,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                              child: item['status'] == SENDING_TYPE
                                  ? ConstrainedBox(
                                      constraints: const BoxConstraints(
                                          maxWidth: 10, maxHeight: 10),
                                      child: const SizedBox(
                                        width: 10,
                                        height: 10,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2.0,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  Colors.grey),
                                        ),
                                      ),
                                    )
                                  : item['status'] == FAILED_TYPE
                                      ? const Image(
                                          width: 11,
                                          height: 20,
                                          image: AssetImage(
                                              "static/images/network_error_icon.png"))
                                      : Container()),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  final int maxValue = 1 << 32;

  sendTxt() async {
    // int tag = random.nextInt(maxValue);
    // if (CommonUtils.isEmpty(textEditingController.value.text.trim())) {
    //   return;
    // }
    // String message = textEditingController.value.text;
    // addMessage(message, tag);
    // textEditingController.text = '';
    // String url = '${Address.getPrefix()}hbpay/overdue/urge/saveReply';
    // var res = await httpManager.netFetch(url,
    //     data: {
    //       'orderNo': widget.orderNo,
    //       'userId': userId,
    //       'name': userName,
    //       'reply': message,
    //       'tag': '$tag',
    //     },
    //     options: Options(method: 'post'),
    //     showLoadingForPost: false);

    // int index = 0;
    // if (res.result) {
    //   for (int i = 0; index < list.length; i++) {
    //     if (list[i]['tag'] == res.data) {
    //       index = i;
    //       break;
    //     }
    //   }
    //   setState(() {
    //     list[index]['status'] = SUCCESSED_TYPE;
    //   });
    // } else {
    //   setState(() {
    //     list[index]['status'] = FAILED_TYPE;
    //   });
    // }
  }

  final random = Random();

  addMessage(content, tag) {
    int time = DateTime.now().millisecondsSinceEpoch;
    setState(() {
      list.insert(0, {
        "createdAt": time,
        "userId": userId,
        "name": userName,
        // "orderNo": widget.orderNo,
        "reply": content,
        "updatedAt": time,
        'status': SENDING_TYPE,
        'tag': '$tag',
      });
    });
    Timer(const Duration(milliseconds: 100), () => _scrollController.jumpTo(0));
  }

  static int SENDING_TYPE = 0;
  static int FAILED_TYPE = 1;
  static int SUCCESSED_TYPE = 2;
}
