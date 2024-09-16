import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page4.dart';
import 'package:cng/page4.dart' as page4;
import 'package:cng/page2.dart' as page2;
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
            Align(
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
                    padding:
                        const EdgeInsets.only(top: 130, left: 20, right: 20),
                    child: Container(
                      width: double.infinity,
                      height: 1000,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Color(0xffF7F8FA)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 156, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Petrol button
                        GestureDetector(
                          onTap: () => updateSelectedFuel('Petrol'),
                          child: Container(
                            width: 92,
                            height: 37,
                            decoration: BoxDecoration(
                              color: getFuelColor('Petrol'),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Daily',
                                style: TextStyle(
                                  color: selectedFuel == 'Petrol'
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // CNG button
                        GestureDetector(
                          onTap: () => updateSelectedFuel('CNG'),
                          child: Container(
                            width: 92,
                            height: 37,
                            decoration: BoxDecoration(
                              color: getFuelColor('CNG'),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Weekly',
                                style: TextStyle(
                                  color: selectedFuel == 'CNG'
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Diesel button
                        GestureDetector(
                          onTap: () => updateSelectedFuel('Diesel'),
                          child: Container(
                            width: 92,
                            height: 37,
                            decoration: BoxDecoration(
                              color: getFuelColor('Diesel'),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Monthly',
                                style: TextStyle(
                                  color: selectedFuel == 'Diesel'
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230, left: 30, right: 30),
              child: Container(
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
                    // Petrol label and icon
                    Row(
                      children: [
                        Icon(Icons.local_gas_station, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "Petrol",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 85,
                          height: 57,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "₹ 23K",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "+23.45%",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    // Sales increased
                    Row(
                      children: [
                        Text(
                          "Sales increased by ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "23.45%",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                    // Stock, Sales, Price section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Stock
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Stock",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text("125/250 ltrs",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sales",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text("23K INR",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        // Sales

                        // Price
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Price",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text("80.96 /ltr",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Sales amount and percentage change
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 30, right: 30),
              child: Container(
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
                    // Petrol label and icon
                    Row(
                      children: [
                        Icon(Icons.local_gas_station, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "Petrol",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 85,
                          height: 57,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "₹ 17K",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "+23.45%",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    // Sales increased
                    Row(
                      children: [
                        Text(
                          "Sales increased by ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "23.45%",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                    // Stock, Sales, Price section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Stock
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Stock",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text("125/250 ltrs",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sales",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text("23K INR",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        // Sales

                        // Price
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Price",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text("80.96 /ltr",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Sales amount and percentage change
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 670, left: 30, right: 30),
              child: Container(
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
                    // Petrol label and icon
                    Row(
                      children: [
                        Icon(Icons.local_gas_station, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "Petrol",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 85,
                          height: 57,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "₹ 7K",
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "+23.45%",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    // Sales increased
                    Row(
                      children: [
                        Text(
                          "Sales increased by ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "23.45%",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                    // Stock, Sales, Price section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Stock
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Stock",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text("125/250 ltrs",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sales",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text("23K INR",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        // Sales

                        // Price
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Price",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey)),
                            Text("80.96 /ltr",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Sales amount and percentage change
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
