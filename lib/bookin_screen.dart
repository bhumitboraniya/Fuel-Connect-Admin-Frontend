import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:cng/detailed_screen.dart';
import 'package:cng/page1.dart';
import 'package:cng/page3.dart';
import 'package:cng/splash1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page4.dart';
import 'package:cng/page4.dart' as page4;
import 'package:cng/page2.dart' as page2;
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class booking_screen extends StatefulWidget {
  const booking_screen({Key? key}) : super(key: key);

  @override
  State<booking_screen> createState() => _booking_screenState();
}

final _pageController = PageController(initialPage: 2);

/// Controller to handle bottom nav bar and also handles initial page
final NotchBottomBarController _controller = NotchBottomBarController(index: 2);

int maxCount = 5;

class _booking_screenState extends State<booking_screen> {
  String selectedFuel = 'Petrol'; // Default selected fuel type

  void updateSelectedFuel(String fuel) {
    setState(() {
      selectedFuel = fuel;
    });
  }

  Color getFuelColor(String fuel) {
    if (selectedFuel == fuel) {
      return Color.fromARGB(246, 218, 149, 128); // Selected color
    } else {
      return Colors.transparent; // Transparent for non-selected
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      const Page1(),
      const page2.Page2(),
      review(),
      page4.Page4(
        name1: name,
        email1: email,
        phone1: number,
      ),
    ];

    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: Colors.black,
              showLabel: true,
              textOverflow: TextOverflow.visible,
              maxLine: 1,
              shadowElevation: 5,
              kBottomRadius: 28.0,
              notchColor: Colors.black87,
              removeMargins: false,
              bottomBarWidth: 500,
              showShadow: false,
              durationInMilliSeconds: 300,
              itemLabelStyle: const TextStyle(fontSize: 10),
              elevation: 1,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_outlined,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 1',
                ),
                BottomBarItem(
                  inActiveItem:
                      Icon(Icons.send_outlined, color: Colors.blueGrey),
                  activeItem: Icon(
                    Icons.send_outlined,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 2',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.map_outlined,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.map_outlined,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 3',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 4',
                ),
              ],
              onTap: (index) {
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
    );
  }
}

class review extends StatelessWidget {
  const review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF3A3A3A),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(28),
                            bottomRight: Radius.circular(28)),
                      ),
                      child: Container(
                        width: 72,
                        height: 56,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF3A3A3A),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Container(
                      width: 227,
                      height: 56,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 55, left: 10),
              child: Container(
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 34.0),
                  child: Text(
                    'Statistics',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      height: 4,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Align(
                alignment: Alignment.topLeft,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 34.0),
                          child: Text(
                            'Invoice',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              height: 4,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Positioned(
                    //   left: 21,
                    //   child: Container(
                    //     width: 38.4,
                    //     height: 38.4,
                    //     child: SizedBox(
                    //       width: 12,
                    //       height: 24,
                    //       child: SvgPicture.asset(
                    //         'assets/vector_119_x2.svg',
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          // Upper Card
                          Container(
                            padding: EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 4,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "#84FRE414EDS",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Paid",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        "₹2500",
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Total Payment",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.orange.shade500,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16),
                                        bottomRight: Radius.circular(16),
                                      )),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Time",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            "13:56",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Date",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            "25th May",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Quantity",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            "25 litres",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          // Details Card
                          Container(
                            padding: EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 4,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Details",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Paid",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Item Total",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                    Text(
                                      "₹1700.71",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Tax",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                    Text(
                                      "+ 18%",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Discount",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                    Text(
                                      "-₹25.00",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Divider(),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "₹2500.71",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 630, left: 15, right: 15),
              child: Image(
                image: AssetImage('assets/admin_review.png'),
                width: 368,
                height: 164,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
