import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:flutter/material.dart';

class DoubleText extends StatelessWidget {
   DoubleText({super.key,
   required this.firstText,
   required this.secondText,
   this.alignment,
   this.crossAxisAlignment = CrossAxisAlignment.start,
   });
String firstText;
String secondText;
AlignmentGeometry? alignment;
CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: alignment,
       // color: Colors.red,
        height: 50,
        width: 100,
        child: Column(
         crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(firstText.toString(),
            style: TextStyle(
              color: AppColors.grey.withOpacity(0.6),
              fontSize: 12
            ),),
             Text(secondText.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.darkBlue,
              fontSize: 16
            ),),
          ],
        ),
      ),
    );
  }
}