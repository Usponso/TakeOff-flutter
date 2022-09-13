import "package:flutter/material.dart";
import 'package:takeoff_flutter/screen/widgets/appBarTakeOff.dart';

class ResultPage extends StatefulWidget {
  const ResultPage(
      {super.key, required this.callback, required this.favorites});

  final Function callback;
  final List favorites;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List results = ["Jean Dupont", "John Doe", "Sarah Smith"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTakeOff(
        callback: widget.callback,
        favorites: widget.favorites,
      ),
      body: Column(
        children: [
          for (var person in results)
            Card(
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
                      IconButton(
                        onPressed: () {
                          print("FAVORITE $person");
                          widget.callback(name: person);
                        },
                        icon: widget.favorites.contains(person)
                            ? Icon(Icons.favorite, color: Colors.red)
                            : Icon(Icons.favorite_border, color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
