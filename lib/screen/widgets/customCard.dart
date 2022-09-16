import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:takeoff_flutter/screen/widgets/customButton.dart';
import 'package:takeoff_flutter/screen/widgets/profilePage.dart';

import '../../constant.dart';
import '../../model/profile.dart';
import '../../service/providerFav.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.person});
  final Profile person;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset("assets/photos/${person.img}"),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  person.name,
                  style: TextStyle(
                      color: MyColors.primary, fontWeight: FontWeight.bold),
                ),
                Text(
                  person.job,
                  style: TextStyle(
                      color: MyColors.secondary, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    person.description,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        text: "Voir le profil",
                        color: MyColors.secondary,
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProfilePage(profile: person),
                              ));
                        },
                      ),
                      IconButton(
                        onPressed: () {
                          Provider.of<ProviderFav>(context, listen: false)
                              .addFavorite(profile: person);
                        },
                        icon: Provider.of<ProviderFav>(context, listen: false)
                                .favorites
                                .contains(person)
                            ? Icon(Icons.favorite, color: Colors.red)
                            : Icon(Icons.favorite_border, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
