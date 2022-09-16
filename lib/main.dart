import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:takeoff_flutter/constant.dart';
import 'package:takeoff_flutter/screen/favoritesPage.dart';
import 'package:takeoff_flutter/screen/resultPage.dart';
import 'package:takeoff_flutter/screen/takeoff.dart';
import 'package:takeoff_flutter/service/providerFav.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProviderFav(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TakeOff',
      initialRoute: "/",
      routes: {
        "/" : (context) => const TakeOff(),
        "/search": (context) => const ResultPage(),
        "favorites": (context) => const FavoritesPage(),
      },
      theme: ThemeData(
        primarySwatch: MaterialColor(0xff8A87C1, mapColor),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      // home: TakeOff(),
    );
  }
}
