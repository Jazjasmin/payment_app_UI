import 'package:flutter/cupertino.dart';
import 'package:payment_app/components/colors.dart';

class AppLargeButton extends StatelessWidget {
final Color? backGroundColor;
final Color? textColor;
final String text;
final Function()? onTap;
final bool? isBorder;

  const AppLargeButton({Key? key,
    this.backGroundColor, 
    this.textColor, this.onTap, this.isBorder:false, 
    required this.text}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        width:MediaQuery.of(context).size.width-60,
        height: 60,
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: AppColor.mainColor,
          )
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
             fontSize: 30,
             color: textColor 
            ),
          ),
        ),
      ),
    );
  }
}