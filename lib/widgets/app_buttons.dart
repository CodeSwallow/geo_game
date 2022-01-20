import 'package:flutter/material.dart';
import 'package:geo_game/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String text;
  IconData? icon;
  bool isIcon;

  AppButtons(
      {Key? key,
      this.size = 60,
      this.text = '',
      this.icon,
      this.isIcon = false,
      required this.color,
      required this.backgroundColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor,
      ),
      child: Center(
        child: isIcon
            ? Icon(icon, color: color)
            : AppText(text: text, color: color),
      ),
    );
  }
}
