import 'package:flutter/material.dart';

class ResourceCard extends StatelessWidget {
  const ResourceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      width: 200,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title", style: TextStyle(fontSize: 20)),
            Text("Description"),
            SizedBox(height: 10),
            Image(
              image: NetworkImage(
                  "https://avatars3.githubusercontent.com/u/17098477?s=460&v=4"),
            )
          ]),
    );
  }
}
