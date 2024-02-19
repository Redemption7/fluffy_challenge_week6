import 'dart:isolate';

import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:fluffy_challenge_week6/widgets/class_package.dart';
import 'package:flutter/material.dart';

class TicketClass extends StatelessWidget {
   TicketClass({super.key,
   this.isSelected = false,
  required this.iconData1,
//  required this.iconData2,
  required this.iconData3,
  required this.iconData4,
   this.packageName1,
   this.packageName2,
   this.packageName3,
   this.packageName4,
   this.price,
   this.ticketClass
   });
  bool isSelected = false;
  String? ticketClass;
  String? price;
  IconData iconData1,iconData3,iconData4;
  String? packageName1,packageName2,packageName3,packageName4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height*0.24,
        width: MediaQuery.of(context).size.width*0.60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border(
            top: isSelected? BorderSide.none : BorderSide(color: AppColors.green),
            bottom: isSelected? BorderSide.none : BorderSide(color: AppColors.green),
            right: isSelected? BorderSide.none : BorderSide(color: AppColors.green),
            left: isSelected? BorderSide.none : BorderSide(color: AppColors.green)
          ),
        ),
        child: Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(ticketClass.toString(),
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                   Text('\$${price.toString()}',
                  style: TextStyle(
                    color: AppColors.green,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 10,
              thickness: 1,
              color: AppColors.grey.withOpacity(0.6),),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClassPackage(iconData: iconData1, packageName: packageName1.toString()),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child:Row(
                children: [
                  Image.asset(
                    'assets/images/seat.png', 
                    color: AppColors.green,
                    height: 20,
                    width: 20,),
                    const SizedBox(width: 8,),
                    Text('Extraleg room',
                    style: TextStyle(
                     fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey.withOpacity(0.6)
                    ),)
                ],
              )
              // ClassPackage(iconData: iconData2, packageName: packageName2.toString()),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClassPackage(iconData: iconData3, packageName: packageName3.toString()),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClassPackage(iconData: iconData4, packageName: packageName4.toString()),
            )
          ],
        ),
      ),
    );
  }
}