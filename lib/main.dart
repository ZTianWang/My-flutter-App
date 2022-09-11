import 'package:flutter/material.dart';
import 'package:getskills_flutter/chat_list/chat_list_page.dart';
import 'package:getskills_flutter/chat_list/chat_list_page_advisor.dart';
import 'package:getskills_flutter/chat_list/message_data/message_list.dart';
import 'package:getskills_flutter/common_widgets/form_submit_button.dart';
import 'package:getskills_flutter/sign_in/sign_in_button.dart';
import 'pages/login_page.dart';
import 'pages/signup_page.dart';
import 'package:getskills_flutter/pages/chat.dart';

import 'home_screen.dart';

import 'advisor_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:
          // const MyHomePage(title: 'Welcome to GetSkills'),
          const LoginPage(),
      // const HomeScreen(),
      // AdvisorDetail(),
      // const ChatListPage(),
      // const AdvisorChatListPage(),
      // const ChatPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Text('To the home screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: SignInButton(
        text: 'Show maths tests',
        onPressed: _incrementCounter,
        textColor: Color.alphaBlend(Colors.black, Colors.white10),
        color: Colors.green,
      ),
    );
  }
}
