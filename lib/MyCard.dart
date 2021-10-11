import 'package:flutter/material.dart';

import 'pages/MyPage.dart';

class MyCard extends StatelessWidget {
  final String name;
  final String text_under_title;
  final Color background_color;
  final String email;
  final String bio;
  final Image image;

  const MyCard({
    Key? key,
    required String this.name,
    required String this.text_under_title,
    required Color this.background_color,
    required String this.email,
    required String this.bio,
    required Image this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        color: background_color,
        child: ListTile(
          title: Text(name),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: image,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(text_under_title),
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MyPage(
                name: name,
                text_under_title: text_under_title,
                background_color: background_color,
                email: email,
                bio: bio,
                image: image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
