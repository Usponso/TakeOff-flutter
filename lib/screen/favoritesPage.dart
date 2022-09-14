import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:takeoff_flutter/constant.dart';
import 'package:takeoff_flutter/screen/widgets/appBarTakeOff.dart';
import 'package:takeoff_flutter/screen/widgets/customCard.dart';
import 'package:takeoff_flutter/screen/widgets/providerFav.dart';

import '../model/profile.dart';
import 'resultPage.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTakeOff(
        borderBottom: MyColors.secondary,
      ),
      body: Consumer<ProviderFav>(
        builder: (context, providerFav, child) {
          return ListView.separated(
            padding: EdgeInsets.all(30),
            shrinkWrap: true,
            itemCount: providerFav.favorites.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 20,
              );
            },
            itemBuilder: (context, index) {
              Profile favorite = providerFav.favorites[index];
              if (index == 0) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      label: Text("Retour"),
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomCard(person: favorite),
                  ],
                );
              }
              return CustomCard(person: favorite);
            },
          );
        },
      ),
    );
  }
}
