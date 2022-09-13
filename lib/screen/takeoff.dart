import 'package:flutter/material.dart';
import 'package:takeoff_flutter/screen/widgets/appBarTakeOff.dart';
import 'package:takeoff_flutter/screen/widgets/searchHome.dart';
import 'package:takeoff_flutter/screen/widgets/sloganHome.dart';

class TakeOff extends StatefulWidget {
  const TakeOff({super.key});

  @override
  State<TakeOff> createState() => _TakeOffState();
}

class _TakeOffState extends State<TakeOff> {
  List favorites = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarTakeOff(callback: addFavorite, favorites: favorites,),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.purple[300],
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SloganHome(),
                  SearchHome(callback: addFavorite, favorites: favorites,),
                ]),
          ),
        ));
  }

  void addFavorite({required String name}) {
    setState(() {
      if (!favorites.contains(name)) {
        favorites.add(name);
      } else {
        favorites.remove(name);
      }
    });
    print(favorites.length);
  }
}
