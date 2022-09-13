// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:takeoff_flutter/screen/resultPage.dart';
import 'package:takeoff_flutter/screen/widgets/sloganHome.dart';

class SearchHome extends StatelessWidget {
  const SearchHome(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SloganHome(),
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
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(),
                  ));
            },
            child: Text("Rechercher", style: TextStyle(fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
              backgroundColor: Color(0xff303056),
            ),
          ),
        ],
      ),
    );
  }
}
