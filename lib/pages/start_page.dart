import 'package:flutter/material.dart';
import 'package:geo_game/widgets/app_large_text.dart';
import 'package:geo_game/widgets/app_text.dart';
import 'package:geo_game/widgets/responsive_button.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  List countries = [
    {
      "name": "North America",
      "image": "north-america.png",
      "large_text": "North America",
      "medium_text": "Canada, USA, and Mexico",
      "small_text":
          "North America is a continent in the Northern Hemisphere and almost entirely within the Western Hemisphere."
    },
    {
      "name": "Canada",
      "image": "canada.png",
      "large_text": "Canada",
      "medium_text": "Capital: Otawa",
      "small_text": "It is the world's second-largest country by total area."
    },
    {
      "name": "United States",
      "image": "america.png",
      "large_text": "United States",
      "medium_text": "Capital: Washington, D.C.",
      "small_text":
          "With a population of more than 331 million people, it is the third most populous country in the world."
    },
    {
      "name": "Mexico",
      "image": "mexico.png",
      "large_text": "Mexico",
      "medium_text": "Capital: Mexico City",
      "small_text":
          "It is the 10th-most-populous country and has the most Spanish-speakers."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: countries.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage("assets/images/" + countries[index]['image']),
                  alignment: const Alignment(0.0, 0.3),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 100,
                  left: 20,
                  right: 20,
                  bottom: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            AppLargeText(text: countries[index]["large_text"]),
                            AppText(
                                text: countries[index]["medium_text"],
                                size: 25),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 300,
                              child: AppText(
                                text: countries[index]["small_text"],
                                color: const Color(0xFF878593),
                              ),
                            ),
                          ],
                        ),
                        ResponsiveButton(
                          width: 300,
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(countries.length, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 35 : 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index == indexDots
                                ? Colors.pink.shade900
                                : Colors.pink.shade50,
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
