
import 'package:day_4_in_100_days_of_flutter/widgets/header_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/content_view_widget.dart';
import '../widgets/profile_panel_idget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: const [
              //Reuse Header widget
              HeaderWidget(
                title: "My Profile",
                profileImage: false,
              ),

              //Profile Area
              ProfilePanelWidget(),

              //Display Area
              TabBar(
                tabs: [
                  Tab(
                    text: 'Collections(23)',
                  ),
                  Tab(text: 'Cards(5)'),
                  Tab(text: 'Scraps(54)'),
                ],
                labelColor: Color(0xFF061936),
                indicatorSize: TabBarIndicatorSize.label,
              ),

              Expanded(
                child: TabBarView(children: [
                  ContentViewWidget(),
                  ContentViewWidget(),
                  ContentViewWidget(),
                ]),
              ),

              //Discription
            ],
          ),
        ),
      ),
    );
  }
}


