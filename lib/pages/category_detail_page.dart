import 'package:flutter/material.dart';
import '../common_widgets/call_back.dart';

class CategoryDetailPage extends StatefulWidget {
  CategoryDetailPage({Key? key}) : super(key: key);

  @override
  State<CategoryDetailPage> createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage> {
  String msg =
      "Mathematics are the result of mysterious powers which no one understands, and which the unconscious recognition of beauty must play an important part. Out of an infinity of designs a mathematician chooses one pattern for beauty’s sake and pulls it down to earth. — David Hilbert, German mathematician";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TouchCallBack(
                  isfeed: false,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 30.0,
                    margin: const EdgeInsets.only(top: 10.0, left: 5.0),
                    child: const Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ),               
                SafeArea(
                  bottom: false,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5.0, left: 10.0),
                    child: Text(
                    "Math",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Container(
                        width: 260,
                        margin: const EdgeInsets.only(top: 5.0, left: 10.0),
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
                          Text("Marston Morse"),
                          Text("American mathematician"),
                        ],
                      ),
                    )),
                    Text("Active 2 days ago")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Text("Mathematics knows no races or geographic boundaries; for mathematics, the cultural world is one country.".substring(0, 100)),
                )
              ],
            ),
          ),
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
                          Text("David Hilbert"),
                          Text("German mathematician"),
                        ],
                      ),
                    )),
                    Text("Active 5 hours ago")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text("Mathematics allows for no hypocrisy and no vagueness."),
                )
              ],
            ),
          ),
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
            "Our Best advisors",
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
                    // fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Advisors",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}