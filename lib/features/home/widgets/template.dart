// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:antivirus_3/features/theme/pallete.dart';

class Template extends StatelessWidget {
  final String imageUrl;
  final String text1;
  final String text2;
  final Color color;
  final double? height;
  final double? width;
  const Template(
      {Key? key,
      required this.imageUrl,
      required this.text1,
      required this.text2,
      required this.color,
      this.height = 300,
      this.width = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.only(left: 10, top: 10),
      alignment: Alignment.centerLeft,
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
        image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
            fit: BoxFit.fitHeight),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          text1,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          text2,
          style: TextStyle(color: Colors.white),
        )
      ]),
    );
  }
}
