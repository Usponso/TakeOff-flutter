import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:takeoff_flutter/screen/favoritesPage.dart';
import 'package:takeoff_flutter/screen/resultPage.dart';
import 'package:takeoff_flutter/screen/takeoff.dart';

class AppBarTakeOff extends StatelessWidget with PreferredSizeWidget {
  const AppBarTakeOff(
      {super.key, required this.callback, required this.favorites});

  final Function callback;
  final List favorites;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.purple[300],
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TakeOff(),
              ));
        },
        icon: Icon(Icons.home),
      ),
      centerTitle: true,
      title: Text(
        "TakeOff",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FavoritesPage(callback: callback, favorites: favorites),
                ));
          },
          icon: Icon(Icons.favorite),
        )
      ],
    );
  }

  @override
// TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
