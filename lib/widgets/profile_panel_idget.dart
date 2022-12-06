import 'package:flutter/material.dart';

import 'social_indicator_widget.dart';

class ProfilePanelWidget extends StatelessWidget {
  const ProfilePanelWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Main Profile and following details
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100)),
                  child: const CircleAvatar(
                    radius: 50, backgroundImage: AssetImage("assets/images/CinemaNinja.png")
                  )),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "CinemaNinja",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Lagos, Nigeria",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SocialIndicatorWidget(
                        title: 'Following',
                        value: '756',
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      SocialIndicatorWidget(title: 'Followers', value: '795'),
                      SizedBox(
                        width: 25,
                      ),
                      SocialIndicatorWidget(title: 'Cards', value: '156'),
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          //Description
          const Text(
            "A boy who wants to travel and explore all the world.",
            style: TextStyle(fontSize: 14),
          ),
          const Text(
            "Next Mission: Canada.",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 30,),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 50,
            child: const Center(
                child: Text(
              "Edit Profile",
              style: TextStyle(
                fontSize: 16,
                  color: Color(0xFF016FE9), fontWeight: FontWeight.bold),
            ),),
          ),
        ],
      ),
    );
  }
}
