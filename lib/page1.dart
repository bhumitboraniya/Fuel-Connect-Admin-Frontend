import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page4.dart';
import 'package:cng/page4.dart' as page4;
import 'package:cng/page2.dart' as page2;
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  final NotchBottomBarController? controller;

  const Page1({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Stack(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 48.0, left: 20),
                child: Row(
                  children: [
                    Image(
                      width: 116,
                      height: 30,
                      image: AssetImage(
                        'assets/title.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
              child: Column(
                children: [
                  CarouselSlider(
                    items: [
                      //1st Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/frame.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //2nd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/frame.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/frame.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //4th Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/frame.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //5th Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/frame.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 337.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.9,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 430, left: 30),
              child: Text(
                'Recent Orders',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450),
              child: Column(
                children: [
                  CarouselSlider(
                    items: [
                      SizedBox(
                        width: 300,
                        height: 100,
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 4,
                          margin: EdgeInsets.all(16),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Top row with title and petrol tag
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '25Ltr Petrol',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.orange.shade100,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 8),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.local_gas_station,
                                            color: Colors.orange,
                                            size: 18,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            'Petrol',
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),

                                // Date and time row
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined,
                                        size: 16, color: Colors.grey),
                                    SizedBox(width: 4),
                                    Text(
                                      '25th May',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(width: 16),
                                    Icon(Icons.access_time,
                                        size: 16, color: Colors.grey),
                                    SizedBox(width: 4),
                                    Text(
                                      '10:00 AM',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),

                                // Vehicle description
                                Text(
                                  'Honda Pulser Tata Baja',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(height: 16),

                                // Price and buttons
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '₹2500',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Cancel',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              side: BorderSide(
                                                  color: Colors.black),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12, vertical: 6),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Accept',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.orange,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12, vertical: 6),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 220.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.77,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 670, left: 30),
              child: Text(
                'Offers',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 695, left: 20, right: 20, bottom: 100),
              child: Column(
                children: [
                  CarouselSlider(
                    items: [
                      //1st Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/frame2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //2nd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/frame2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/frame2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //4th Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/frame2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //5th Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/frame2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 126.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.9,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
