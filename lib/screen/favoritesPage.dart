import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:takeoff_flutter/constant.dart';
import 'package:takeoff_flutter/screen/widgets/appBarTakeOff.dart';
import 'package:takeoff_flutter/screen/widgets/providerFav.dart';

import '../model/profile.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTakeOff(borderBottom: secondary,),
      body: Consumer<ProviderFav>(
        builder: (context, providerFav, child) {
          // ignore: curly_braces_in_flow_control_structures
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: providerFav.favorites.length,
            itemBuilder: (context, index) {
              Profile favorite = providerFav.favorites[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Image.asset("photos/${favorite.img}"),
                    ListTile(
                      title: Text(favorite.name, style: TextStyle(color: primary, fontWeight: FontWeight.bold),),
                      subtitle: Text(
                        'Profession',
                        style: TextStyle(color: secondary),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Description du professionnel',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('VOIR LE PROFIL'),
                        ),
                        IconButton(
                          onPressed: () {
                            // print("FAVORITE $favorite");
                            providerFav.addFavorite(profile: favorite);
                          },
                          icon: Icon(Icons.favorite, color: Colors.red),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
