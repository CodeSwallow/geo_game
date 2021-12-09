import 'package:flutter/material.dart';
import 'package:geo_game/widgets/app_large_text.dart';
import 'package:geo_game/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "north-america.png",
    "america.png",
    "mexico.png",
    "canada.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/" + images[index]),
                  alignment: const Alignment(0.0, 0.5),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 100,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        AppLargeText(text: "North America"),
                        AppText(text: "USA, Canada, and Mexico", size: 25),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 250,
                          child: AppText(
                            text:
                                "Name the given country correctly or chose the correct capital for it",
                            color: Color(0xFF878593),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
