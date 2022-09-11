import 'package:flutter/material.dart';
import '../pages/category_detail_page.dart';
import 'package:getskills_flutter/utils/global.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: headerBackgroundColor,
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Row(
              children: const <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1629467057571-42d22d8f0cbd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=698&q=80'),
                  radius: 15,
                ),
                SizedBox(width: 10),
                Text(
                  'Hello, Raymond',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            width: 200,
            child: LinearProgressIndicator(
              value: 0.8,
              backgroundColor: indicatorBackgroundColor,
              valueColor: AlwaysStoppedAnimation<Color>(indicatorColor),
              minHeight: 10,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Exp: ???/114514',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
