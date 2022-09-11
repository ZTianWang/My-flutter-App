import 'package:flutter/material.dart';
import '../common_widgets/call_back.dart';

class CategoryDetailPage extends StatefulWidget {
  CategoryDetailPage({Key? key}) : super(key: key);

  @override
  State<CategoryDetailPage> createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage> {
  String msg =
      "imagesFhq8ZBovldOlIz1-ga5QmR2imagesFhq8ZBovldOlIz1ga5QmR2imagesFhq8ZBovldOlIz1ga5QmR2imagesFhq8ZBovldOlIz1ga5QmR2imagesFhq8ZBovldOlIz1-ga5QmR2imagesFhq8ZBovldOlIz1-ga5QmR2imagesFhq8ZBovldOlIz1-ga5QmR2imagesFhq8ZBovldOlIz1-ga5QmR2imagesFhq8ZBovldOlIz1-ga5QmR2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  bottom: false,
                  child: Text(
                    "Math",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Container(
                        width: 260,
                        child: Text(
                          msg,
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Menu(),
              ],
            ),
          ),
          AdviceTag(),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 40.0,
                        width: 40.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/avatar_two.jpg",
                          ),
                        )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("title...."),
                          Text("sub-title...."),
                        ],
                      ),
                    )),
                    Text("21 July 2022")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Text(msg.substring(0, 100)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container AdviceTag() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Our Best advices",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(3)),
              child: Center(
                  child: Text(
                "2",
                style: TextStyle(color: Colors.white),
              ))),
        ],
      ),
    );
  }

  Container Menu() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Material",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Advice",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}