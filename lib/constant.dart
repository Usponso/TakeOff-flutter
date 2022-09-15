import 'package:flutter/material.dart';

import 'model/profile.dart';

Map<int, Color> mapColor = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

// Color primary = Color(0xff303056);
// Color secondary = Color(0xff8a87c1);
// Color tertiary = Color(0xffe8cafb);

class MyColors {
  static const Color primary = Color(0xff303056);
  static const Color secondary = Color(0xff8a87c1);
  static const Color tertiary = Color(0xffe8cafb);
}

final List<Profile> results = [
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
