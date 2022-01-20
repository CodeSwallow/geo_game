import 'package:flutter/material.dart';
import 'package:geo_game/widgets/app_buttons.dart';
import 'package:geo_game/widgets/app_large_text.dart';
import 'package:geo_game/widgets/app_text.dart';
import 'package:geo_game/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * .60,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/us_statueliberty.jpg"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment(0.0, 1),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.memory_outlined),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .40,
              bottom: 45,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          AppLargeText(
                            text: 'Statue of Sauce',
                            size: 25,
                            color: Colors.black87,
                          ),
                          AppLargeText(
                            text: '10 Questions',
                            size: 25,
                            color: Colors.blueGrey,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Icon(Icons.align_horizontal_left_sharp),
                          SizedBox(width: 8),
                          AppText(text: 'Answer questions about something'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: Colors.yellow.shade900,
                              );
                            }),
                          ),
                          const AppText(text: '(Big Cha hiself)')
                        ],
                      ),
                      const SizedBox(height: 20),
                      const AppLargeText(text: 'Bodocus', size: 20),
                      const SizedBox(height: 5),
                      const AppText(text: 'Is Extremely Powerful!'),
                      Wrap(
                          children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                right: 10, top: 15, bottom: 15),
                            child: AppButtons(
                                text: (1 + index).toString(),
                                color: selectedIndex == index
                                    ? Colors.black
                                    : Colors.white,
                                backgroundColor: selectedIndex == index
                                    ? Colors.white
                                    : Colors.blueGrey,
                                borderColor: Colors.blueGrey),
                          ),
                        );
                      })),
                      AppLargeText(
                        text: 'Description',
                        color: Colors.black.withOpacity(.8),
                      ),
                      const SizedBox(height: 5),
                      const AppText(
                        text:
                            'Play this game and answer questions correctly about something for some reason so we can see if you are the chosen one.',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: AppButtons(
                        size: 50,
                        color: Colors.black,
                        backgroundColor: Colors.white,
                        borderColor: Colors.black,
                        isIcon: true,
                        icon: Icons.favorite_outline_sharp,
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: ResponsiveButton(
                        width: double.maxFinite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
