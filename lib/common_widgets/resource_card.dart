import 'package:flutter/material.dart';

class ResourceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  const ResourceCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      width: 230,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 20)),
            SizedBox(height: 5),
            Text(title),
            Image(
              image: AssetImage(imageUrl),
            )
          ]),
    );
  }
}
