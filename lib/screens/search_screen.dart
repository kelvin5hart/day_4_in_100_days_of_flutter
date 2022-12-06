import 'package:day_4_in_100_days_of_flutter/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Column(children: const [
        SearchWidget(),
        Expanded(child: Center(child: Text("Search Screen")))
      ],),
    ),);
  }
}
