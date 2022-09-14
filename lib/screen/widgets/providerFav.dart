import 'package:flutter/cupertino.dart';
import 'package:takeoff_flutter/model/profile.dart';

class ProviderFav extends ChangeNotifier {
  final List<Profile> favorites = [];

  void addFavorite({required Profile profile}) {
    print(favorites.contains(profile));
    if (!favorites.contains(profile)) {
      favorites.add(profile);
    } else {
      favorites.remove(profile);
    }
    print(favorites.contains(profile));
    notifyListeners();
  }
}
