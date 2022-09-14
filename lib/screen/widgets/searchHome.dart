// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:takeoff_flutter/screen/resultPage.dart';
import 'package:takeoff_flutter/screen/widgets/customButton.dart';
import 'package:takeoff_flutter/screen/widgets/sloganHome.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({super.key, this.slogan = false});

  final bool slogan;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (slogan) SloganHome(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Profession",
                prefixIcon: Icon(Icons.work),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Localisation",
                prefixIcon: Icon(Icons.gps_fixed),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 10),
          CustomButton(
            text: "Rechercher",
            full: true,
            height: 60,
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(),
                  ));
            },
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => ResultPage(),
          //         ));
          //   },
          //   child: Text(
          //     "Rechercher",
          //     style: TextStyle(fontWeight: FontWeight.bold),
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     minimumSize: Size.fromHeight(50),
          //     backgroundColor: Color(0xff303056),
          //   ),
          // ),
        ],
      ),
    );
  }
}
