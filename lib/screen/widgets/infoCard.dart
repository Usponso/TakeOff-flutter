import "package:flutter/material.dart";

import '../../constant.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.title, required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    color: MyColors.secondary,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  content,
                  style: TextStyle(color: MyColors.primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
