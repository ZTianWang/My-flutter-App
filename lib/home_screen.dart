import 'package:flutter/material.dart';
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
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Expanded(
                          child: Text(
                            'History',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: titleColor),
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                        ),
                      ]),
                  const SizedBox(height: 10),
                  const MessageCard(
                    imageUrl:
                        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                    title: 'Connor',
                    message:
                        'What kind of music do you like and what app do you use? ',
                    time: '7:11 PM',
                  ),
                  const MessageCard(
                    imageUrl:
                        'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=761&q=80',
                    title: 'Laura Levy',
                    message: 'Hi Tina. How\'s your night going?',
                    time: '5:28 PM',
                  ),
                  const MessageCard(
                    imageUrl:
                        'https://images.unsplash.com/photo-1628890923662-2cb23c2e0cfe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                    title: 'Ellen Lambert',
                    message:
                        'Cool!😊 let\'s meet at 16:00 near the shopping mall',
                    time: '7:11 PM',
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
