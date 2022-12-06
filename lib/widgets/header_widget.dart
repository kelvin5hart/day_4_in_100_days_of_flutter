import 'package:flutter/material.dart';


class HeaderWidget extends StatelessWidget {
  final String title;
  final bool profileImage;
  const HeaderWidget({
    Key? key, required this.title, this.profileImage = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "My Collection",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Visibility(
            visible: profileImage,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("assets/images/CinemaNinja.png", fit: BoxFit.contain,)),
            ),
          )
        ],
      ),
    );
  }
}