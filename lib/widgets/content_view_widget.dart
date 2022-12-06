import 'package:flutter/material.dart';

import '../data/images_data.dart';

class ContentViewWidget extends StatelessWidget {
  const ContentViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 2/3),
      itemBuilder: (context, item) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              SizedBox(
                height: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      images[item],
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                  left: 15,
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Bonny River", style: TextStyle(fontSize: 24, color: Colors.white),),
                      const SizedBox(height: 5,),
                      Row(children: const [
                        Icon(Icons.calendar_month, color: Colors.white, size: 14,),
                        SizedBox(width: 5,),
                        Text("21st July, 2022", style: TextStyle(fontSize: 12, color: Colors.white),),
                      ],),
                    ],
                  ))
            ],
          ),
        );
      },
      itemCount: images.length,
    );
  }
}