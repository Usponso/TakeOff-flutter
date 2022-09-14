import "package:flutter/material.dart";
import 'package:takeoff_flutter/constant.dart';
import 'package:takeoff_flutter/screen/widgets/appBarTakeOff.dart';
import 'package:takeoff_flutter/screen/widgets/customButton.dart';
import 'package:takeoff_flutter/screen/widgets/customCard.dart';
import 'package:takeoff_flutter/screen/widgets/searchHome.dart';

import '../model/profile.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<Profile> results = [
    Profile(
        name: "Jean Dupont",
        job: "Développeur fullstack",
        localisation: "Bethune",
        description:
            "Développer FullStack depuis 5 ans. Je maitrise Vue.js, Angular et React.",
        img: "developer_cover.jfif"),
    Profile(name: "John Doe", job: "Ingénieur son", localisation: "Lille"),
    Profile(name: "Sarah Smith", job: "UI/UX Designer", localisation: "Paris"),
    Profile(
        name: "Jane Doe",
        job: "Photographe",
        localisation: "Marseille",
        img: "developer_cover.jfif"),
    Profile(
        name: "Lorem Ipsum",
        job: "",
        localisation: "Toulouse",
        img: "developer_cover.jfif"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTakeOff(
        borderBottom: MyColors.secondary,
      ),
      body: ListView.separated(
        // padding: EdgeInsets.all(30),
        // shrinkWrap: true,
        itemCount: results.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 10,
          );
        },
        itemBuilder: (context, index) {
          Profile person = results[index];

          if (index == 0) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: SearchHome(),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: CustomButton(
                    text: "Filtres",
                    color: MyColors.secondary,
                    full: true,
                    radius: 40,
                    height: 60,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: MyColors.secondary, width: 4),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: CustomCard(person: person),
                ),
              ],
            );
          }

          return Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: CustomCard(person: person),
          );
        },
      ),
    );
  }
}
