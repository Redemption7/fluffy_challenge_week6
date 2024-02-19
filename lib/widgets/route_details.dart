import 'dart:math';

import 'package:dotted_line/dotted_line.dart';
import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:flutter/material.dart';

class RouteDetails extends StatelessWidget {
   RouteDetails({super.key,
   this.onTap});
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white
            ),
            child:  Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.lightblue.withOpacity(0.2),
                            radius: 12,
                            child: Image(
                              height: 15,
                              image: AssetImage('assets/images/acela.png')),
                          ),
                          Text('Acela'),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.green.withOpacity(0.4),
                        ),
                        child: Text('Cheapest',
                        style: TextStyle(
                          color: AppColors.green
                        ),),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '06:50 AM \n' ,
                              style: TextStyle(
                                color: AppColors.darkBlue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            TextSpan(
                              text: 'Penn Station',
                              style: TextStyle(
                                color: AppColors.grey,
                                fontSize: 13
                              )
                            )
                          ]
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            //color: Colors.red,
                            height: 80,
                            width: MediaQuery.of(context).size.width*0.45,
                          ),
                          Positioned(
                            top: 25,
                            left: 5,
                            child: Row(
                              children: [
                                Icon(Icons.circle_outlined, size: 8, color: AppColors.grey.withOpacity(0.6),),
                                DottedLine(
                                  dashColor: AppColors.grey.withOpacity(0.6),
                                  lineLength: MediaQuery.of(context).size.width*0.35,),
                                Icon(Icons.circle_outlined, size: 8, color: AppColors.grey.withOpacity(0.6),)
                              ],
                            ),
                          ),
                          Positioned(
                          top: 18,
                            left: 70,
                            child: Column(
                              children: [
                                Icon(Icons.train, color: AppColors.grey,),
                                const SizedBox(height: 8,),
                                Text('4h 15m',
                               style: TextStyle(
                                color: AppColors.grey
                               ),)
                              ],
                            ))
                        ],
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '11:05 AM \n' ,
                              style: TextStyle(
                                color: AppColors.darkBlue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
          
                              )
                            ),
                            TextSpan(
                              text: 'South Station',
                              style: TextStyle(
                                color: AppColors.grey,
                                fontSize: 12
                              )
                            )
                          ]
                        )
                      )
                    ],
                  ),
                ),
                DottedLine(
                  lineLength: MediaQuery.of(context).size.width*0.96,
                  dashColor: AppColors.grey.withOpacity(0.4),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                        color: AppColors.grey.withOpacity(0.3)),
                        child: Text('1 Transfers',
                        style: TextStyle(
                          color: AppColors.grey
                        ),),
                      ),
                      Text('\$115.00',
                      style: TextStyle(
                        color: AppColors.darkBlue,
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}