import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:takeoff_flutter/constant.dart';
import 'package:takeoff_flutter/screen/favoritesPage.dart';
import 'package:takeoff_flutter/screen/resultPage.dart';
import 'package:takeoff_flutter/screen/takeoff.dart';

class AppBarTakeOff extends StatelessWidget with PreferredSizeWidget {
  const AppBarTakeOff(
      {super.key,
      this.color = Colors.transparent,
      this.borderBottom = Colors.transparent});

  final Color color;
  final Color borderBottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        child: Container(
          color: borderBottom,
          height: 4,
        ),
        preferredSize: Size.fromHeight(4.0),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, "/");
        },
        icon: Icon(Icons.home, color: MyColors.primary),
      ),
      centerTitle: true,
      title: Text(
        "TakeOff",
        style: GoogleFonts.poppins(
          color: Color(0xff303056),
          fontWeight: FontWeight.w900,
          fontSize: 35,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritesPage(),
                ));
          },
          icon: Icon(Icons.favorite, color: MyColors.primary),
        )
      ],
    );
  }

  @override
// TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
