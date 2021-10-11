import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  final String name;
  final String text_under_title;
  final Color background_color;
  final String email;
  final String bio;
  final Image image;

  const MyPage({
    Key? key,
    required String this.name,
    required String this.text_under_title,
    required Color this.background_color,
    required String this.email,
    required String this.bio,
    required Image this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: background_color,
      child: SingleChildScrollView(
        child: Padding(
          padding:
          const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 50),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: image,
                            //child: Image.network("data:image/jpeg;base64,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"),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 8, top: 15, bottom: 14),
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff79838B),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            bottom: 0,
                          ),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffB8C5D0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: Text(
                            email,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff79838B),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            "Position",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffB8C5D0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: Text(
                            text_under_title,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff79838B),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Text(
                            'Address',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xffB8C5D0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: Text(
                            'Dhaka',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff79838B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 20, bottom: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            onPressed: () {},
                            child: Text(
                              'ABOUT',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                              ),
                            ),
                            color: Color(0xff4BC9FE),
                            textColor: Colors.white,
                          ),
                        ),
                        Container(
                          height: 30,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            onPressed: () {},
                            child: Text(
                              'WORK',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                              ),
                            ),
                            color: Colors.white,
                            textColor: Color(0xff4BC9FE),
                          ),
                        ),
                        Container(
                          height: 30,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            onPressed: () {},
                            child: Text(
                              'ACTIVITY',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                              ),
                            ),
                            color: Colors.white,
                            textColor: Color(0xff4BC9FE),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'BIO',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff8E99A1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Text(
                          bio,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff6B7379),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Back'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}