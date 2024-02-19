import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:flutter/material.dart';

class ClassPackage extends StatelessWidget {
   ClassPackage({super.key,
   required this.iconData,
    this.isAvailable = true,
   required this.packageName,
   });
  bool isAvailable = true;
  IconData iconData;
  String packageName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(isAvailable? iconData: Icons.cancel ,
        color: isAvailable? AppColors.green : AppColors.red,
        size: 19,),
        SizedBox(width: 10,),
        Text(packageName,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: AppColors.grey.withOpacity(0.6)
        ),)
      ],
    );
  }
}