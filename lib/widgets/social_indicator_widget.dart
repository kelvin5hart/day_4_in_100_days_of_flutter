import 'package:flutter/material.dart';

class SocialIndicatorWidget extends StatelessWidget {
  final String title;
  final String value;
  const SocialIndicatorWidget({
    Key? key, required this.title, required this.value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       Text(
        value,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
       const SizedBox(height: 2,),
       Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
    ],);
  }
}