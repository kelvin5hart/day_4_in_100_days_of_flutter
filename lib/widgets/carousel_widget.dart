import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../data/images_data.dart';


class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Upcoming",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "See All>",
                  style: TextStyle(color: Colors.black38, fontSize: 16),
                ),
              )
            ],
          ),
        ),
        CarouselSlider(
            items: images
                .map((image) => Container(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: 500,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      child: Column(
                        children: [
                          const Text("Bonny River", style: TextStyle(fontSize: 24, color: Colors.white),),
                          const SizedBox(height: 5,),
                          Row(children: const [
                            Icon(Icons.calendar_month, color: Colors.white, size: 14,),
                            SizedBox(width: 5,),
                            Text("21st July, 2022", style: TextStyle(fontSize: 12, color: Colors.white),),
                          ],),
                          const SizedBox(height: 10,),
                        ],
                      ))
                ],
              ),
            ))
                .toList(),
            options: CarouselOptions(
                aspectRatio: 2.0, enlargeCenterPage: true))
      ],
    );
  }
}