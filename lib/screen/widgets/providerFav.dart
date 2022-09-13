import 'package:flutter/cupertino.dart';

class ProviderFav extends ChangeNotifier {
  final List<String> favorites = [];

  void addFavorite({required String name}) {
    if (!favorites.contains(name)) {
      favorites.add(name);
    } else {
      favorites.remove(name);
    }
    print(favorites.length);
    notifyListeners();
  }
}
