import 'package:flutter/material.dart';
import 'package:geo_game/pages/navpages/country_page.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width = 100, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.pink.shade900,
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_right_alt_outlined),
        color: Colors.white,
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(CountryPage.routeName);
        },
      ),
    );
  }
}
