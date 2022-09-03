import 'package:flutter/material.dart';
import 'package:getskills_flutter/common_widgets/resource_card.dart';
import 'package:getskills_flutter/utils/global.dart';

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
            Container(
              width: double.infinity,
              decoration: new BoxDecoration(
                color: headerBackgroundColor,
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://avatars3.githubusercontent.com/u/17098477?s=460&v=4'),
                        radius: 15,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Welcome back to GetSkills',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
            ),
            const SizedBox(height: 20),
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
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: titleColor),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const <Widget>[
                        ResourceCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // the history message section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Expanded(
                      child: Text(
                        'History',
                        style: TextStyle(
                            fontSize: 22,
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
                  SizedBox(height: 10),
                  Container(
                    child: Row(children: [
                      Image(
                        width: 40,
                        height: 40,
                        image: NetworkImage(
                            'https://avatars3.githubusercontent.com/u/17098477?s=460&v=4'),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Title',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Description',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ]),
                      ),
                    ]),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            // the more resources section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'More',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: titleColor),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ResourceCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
