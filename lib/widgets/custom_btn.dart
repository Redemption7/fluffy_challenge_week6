import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
   CustomBtn({super.key,
   required this.btnName,
   this.color = const Color(0xff1AC08F),
   this.borderRadius = 12,
   this.height = 60,
   required this.width,
   this.onTap
   });
  String btnName;
  double? height;
  double? width ;
  double? borderRadius;
  Color? color = AppColors.green;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius!),
          color: color,
        ),
        child: Text(btnName.toString(),
        style: TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.w800
        ),),
      ),
    );
  }
}