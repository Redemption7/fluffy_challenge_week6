import 'package:dotted_line/dotted_line.dart';
import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:flutter/material.dart';

class TrainWithLine extends StatelessWidget {
  const TrainWithLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          children: [
            Container(
              // color: Colors.red,
              height: 50,
              width: MediaQuery.of(context).size.width*0.35,
            ),
            Positioned(
              top: 20,
              child: Row(
                children: [
                  Icon(Icons.circle_outlined, size: 12, color: AppColors.grey,),
                  DottedLine(
                    dashColor: AppColors.grey,
                    lineLength: MediaQuery.of(context).size.width*0.28,),
                  Icon(Icons.circle_outlined, size: 12, color: AppColors.grey,)
                ],
              ),
            ),
            Positioned(
            top: 18,
              left: MediaQuery.of(context).size.width*0.28/2,
              child: Icon(Icons.train, color: AppColors.grey,))
          ],
        ),
      
        Text('3h 45m',
        style: TextStyle(
          fontSize: 12,
          color: AppColors.grey.withOpacity(0.6)
        ),
        )
      ],
    );
  }
}