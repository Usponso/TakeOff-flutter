import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:takeoff_flutter/constant.dart';
import 'package:takeoff_flutter/screen/widgets/appBarTakeOff.dart';
import 'package:takeoff_flutter/screen/widgets/customCard.dart';
import 'package:takeoff_flutter/screen/widgets/infoCard.dart';

import '../../model/profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.profile});
  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTakeOff(borderBottom: MyColors.secondary),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(40),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/photos/${profile.img}"),
                    backgroundColor: MyColors.secondary,
                    radius: 70,
                  ),
                  // Image.asset("assets/photos/${profile.img}"),
                  Text(
                    "${profile.name}",
                    style: GoogleFonts.poppins(
                      color: MyColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "${profile.job}",
                    style: GoogleFonts.poppins(
                      color: MyColors.secondary,
                      fontSize: 13,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                            child: Icon(
                          Icons.gps_fixed,
                          color: MyColors.secondary,
                          size: 20,
                        )),
                        TextSpan(
                          text: " ${profile.localisation}",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 0,
            thickness: 4,
            color: MyColors.secondary,
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            color: Color(0xffF6F6F6),
            child: Column(
              children: [
                InfoCard(title: "A propos", content: profile.description),
                InfoCard(title: "Experience", content: "MON EXPERIENCE"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
