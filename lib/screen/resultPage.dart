import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:takeoff_flutter/constant.dart';
import 'package:takeoff_flutter/screen/widgets/appBarTakeOff.dart';
import 'package:takeoff_flutter/screen/widgets/providerFav.dart';

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
    Profile(name: "Jane Doe", job: "Photographe", localisation: "Marseille", img: "developer_cover.jfif"),
    Profile(name: "Lorem Ipsum", job: "", localisation: "Toulouse", img: "developer_cover.jfif"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarTakeOff(
          borderBottom: secondary,
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(30),
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: results.length,
            itemBuilder: (context, index) {
              Profile person = results[index];
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Image.asset("photos/${person.img}"),
                    ListTile(
                      title: Text(
                        person.name,
                        style: TextStyle(
                            color: primary, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        person.job,
                        style: TextStyle(color: secondary),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        person.description,
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
                        Consumer<ProviderFav>(
                          builder: (context, providerFav, child) {
                            return IconButton(
                              onPressed: () {
                                // print("FAVORITE $person");
                                providerFav.addFavorite(profile: person);
                              },
                              icon: providerFav.favorites.contains(person)
                                  ? Icon(Icons.favorite, color: Colors.red)
                                  : Icon(Icons.favorite_border,
                                      color: Colors.black),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }));
  }
}
