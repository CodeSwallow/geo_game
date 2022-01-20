import 'package:flutter/material.dart';
import 'package:geo_game/maps/us_map.dart';
import 'package:geo_game/pages/detail_page.dart';
import 'package:geo_game/pages/start_page.dart';
import 'package:geo_game/pages/navpages/country_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geography Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const StartPage(),
        //'/': (ctx) => DetailPage(),
        //'/': (ctx) => USMap(),
        CountryPage.routeName: (ctx) => CountryPage(),
      },
    );
  }
}
