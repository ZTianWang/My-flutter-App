import 'package:flutter/material.dart';
import 'package:getskills_flutter/chat_list/chat_list_page.dart';
import 'package:getskills_flutter/chat_list/message_data/message_list.dart';
import 'common_widgets/header.dart';
import 'common_widgets/message_card.dart';
import 'common_widgets/resource_card.dart';
import 'utils/global.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // the header section
            Header(),
            const SizedBox(
              height: 20,
            ),
            // the resource cards section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Favorite',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: titleColor),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const <Widget>[
                        ResourceCard(
                          title: 'Mathematic',
                          subtitle: 'Academic',
                          imageUrl: 'assets/images/math.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // the history message section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    const Expanded(
                      child: Text(
                        'History',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: titleColor),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChatListPage()));
                      },
                      child: const Text(
                        'View all',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(height: 10),
                  Container(
                    height: 220,
                    margin: const EdgeInsets.only(
                        top: 10.0, left: 10.0, right: 10.0),
                    child: MessageList(
                      count: 3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // the more resources section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'More',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: titleColor),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const <Widget>[
                        ResourceCard(
                          title: 'History',
                          subtitle: 'Academic',
                          imageUrl: 'assets/images/history.png',
                        ),
                        ResourceCard(
                          title: 'English',
                          subtitle: 'Academic',
                          imageUrl: 'assets/images/english.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
