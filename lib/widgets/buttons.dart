import 'package:flutter/material.dart';
import 'package:payment_app/components/colors.dart';

class AppButtons extends StatelessWidget {
  final double? fontSize;
  final IconData icon;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final String? text;

  const AppButtons(
      {super.key,
      this.fontSize = 20,
      required this.icon,
      this.onTap,
      this.backgroundColor,
      this.iconColor = Colors.white,
      this.textColor,
      this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColor.mainColor,
            ),
            child: Icon(
              icon,
              size: 30,
              color: iconColor,
            ),
          ),
          text != null
              ? Text(
                  text!,
                  style: TextStyle(fontSize: 14, color: AppColor.mainColor),
                )
              : Container()
        ],
      ),
    );
  }
}
