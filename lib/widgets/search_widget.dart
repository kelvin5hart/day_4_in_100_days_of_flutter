import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.grey), borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: const [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(child: TextField(
            style: TextStyle(fontSize: 24),
            decoration: InputDecoration(
                hintText: "Search Cards, Places...",
                hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                border: InputBorder.none),
          ),)
        ],
      ),
    );
  }
}