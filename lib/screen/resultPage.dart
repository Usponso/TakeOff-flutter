import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:takeoff_flutter/screen/widgets/appBarTakeOff.dart';
import 'package:takeoff_flutter/screen/widgets/providerFav.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List results = [
    "Jean Dupont",
    "John Doe",
    "Sarah Smith",
    "Jane Doe",
    "Lorem Ipsum"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarTakeOff(),
        body: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: results.length,
            itemBuilder: (context, index) {
              String person = results[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(person),
                      subtitle: Text(
                        'Profession',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                        Consumer<ProviderFav>(
                          builder: (context, providerFav, child) {
                            return IconButton(
                              onPressed: () {
                                // print("FAVORITE $person");
                                providerFav.addFavorite(name: person);
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
