import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:cng/bookin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page4.dart';
import 'package:cng/page4.dart' as page4;
import 'package:cng/page2.dart' as page2;
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
                          'Details',
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
                        const EdgeInsets.only(top: 130, left: 10, right: 10),
                    child: Container(
                      width: double.infinity,
                      height: 1100,
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
                                'Petrol',
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
                                'CNG',
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
                                'Diesel',
                                style: TextStyle(
                                  color: selectedFuel == 'Diesel'
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Electric button
                        GestureDetector(
                          onTap: () => updateSelectedFuel('Electric'),
                          child: Container(
                            width: 92,
                            height: 37,
                            decoration: BoxDecoration(
                              color: getFuelColor('Electric'),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Electric',
                                style: TextStyle(
                                  color: selectedFuel == 'Electric'
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

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              booking_screen(), // Replace with your new screen widget
                        ),
                      );
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 450, left: 40, right: 40),
                      child: Container(
                        height: 200,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '25Ltr Petrol',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Order Completed',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.calendar_today, size: 16),
                                SizedBox(width: 5),
                                Text(
                                  '25th May',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '|',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.access_time, size: 16),
                                SizedBox(width: 5),
                                Text(
                                  '10:00 AM',
                                  style: TextStyle(fontSize: 14),
                                ),
                                // SizedBox(
                                // width: 20,
                                // ),
                                Spacer(),
                                Container(
                                  height: 24,
                                  width: 59,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Cancel",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  'Honda Pulser Tata Baja',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 24,
                                    width: 59,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Accept",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Container(
                                  child: Chip(
                                    label: Text('Petrol'),
                                    avatar: Icon(Icons.local_gas_station,
                                        color: Colors.orange),
                                    backgroundColor:
                                        Colors.orange.withOpacity(0.2),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Chip(
                                  label: Text('Electric'),
                                  avatar: Icon(Icons.electric_bolt,
                                      color: Colors.yellow),
                                  backgroundColor:
                                      Colors.yellow.withOpacity(0.2),
                                ),
                                Spacer(),
                                Text(
                                  '₹2500',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 670, left: 40, right: 40),
                    child: Container(
                      height: 200,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '25Ltr Petrol',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'Order Completed',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.calendar_today, size: 16),
                              SizedBox(width: 5),
                              Text(
                                '25th May',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '|',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.access_time, size: 16),
                              SizedBox(width: 5),
                              Text(
                                '10:00 AM',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Honda Pulser Tata Baja',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Container(
                                child: Chip(
                                  label: Text('Petrol'),
                                  avatar: Icon(Icons.local_gas_station,
                                      color: Colors.orange),
                                  backgroundColor:
                                      Colors.orange.withOpacity(0.2),
                                ),
                              ),
                              SizedBox(width: 8),
                              Chip(
                                label: Text('Electric'),
                                avatar: Icon(Icons.electric_bolt,
                                    color: Colors.yellow),
                                backgroundColor: Colors.yellow.withOpacity(0.2),
                              ),
                              Spacer(),
                              Text(
                                '₹2500',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 890, left: 40, right: 40, bottom: 100),
                    child: Container(
                      height: 200,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '25Ltr Petrol',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'Order Completed',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.calendar_today, size: 16),
                              SizedBox(width: 5),
                              Text(
                                '25th May',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '|',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.access_time, size: 16),
                              SizedBox(width: 5),
                              Text(
                                '10:00 AM',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Honda Pulser Tata Baja',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Container(
                                child: Chip(
                                  label: Text('Petrol'),
                                  avatar: Icon(Icons.local_gas_station,
                                      color: Colors.orange),
                                  backgroundColor:
                                      Colors.orange.withOpacity(0.2),
                                ),
                              ),
                              SizedBox(width: 8),
                              Chip(
                                label: Text('Electric'),
                                avatar: Icon(Icons.electric_bolt,
                                    color: Colors.yellow),
                                backgroundColor: Colors.yellow.withOpacity(0.2),
                              ),
                              Spacer(),
                              Text(
                                '₹2500',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 230, left: 40, right: 40),
                    child: Container(
                      height: 200,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '25Ltr Petrol',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'Order Completed',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.calendar_today, size: 16),
                              SizedBox(width: 5),
                              Text(
                                '25th May',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '|',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.access_time, size: 16),
                              SizedBox(width: 5),
                              Text(
                                '10:00 AM',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Honda Pulser Tata Baja',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Container(
                                child: Chip(
                                  label: Text('Petrol'),
                                  avatar: Icon(Icons.local_gas_station,
                                      color: Colors.orange),
                                  backgroundColor:
                                      Colors.orange.withOpacity(0.2),
                                ),
                              ),
                              SizedBox(width: 8),
                              Chip(
                                label: Text('Electric'),
                                avatar: Icon(Icons.electric_bolt,
                                    color: Colors.yellow),
                                backgroundColor: Colors.yellow.withOpacity(0.2),
                              ),
                              Spacer(),
                              Text(
                                '₹1500',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
