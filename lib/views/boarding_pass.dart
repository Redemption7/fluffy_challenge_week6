import 'dart:io';

import 'package:barcode/barcode.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:fluffy_challenge_week6/widgets/double_text.dart';
import 'package:fluffy_challenge_week6/widgets/index.dart';
import 'package:flutter/material.dart';

class BoardingPass extends StatelessWidget {
  const BoardingPass({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      appBar: AppBar(
        backgroundColor: AppColors.darkBlue,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(
          Icons.arrow_back,
        color: AppColors.white,
        )),
        title: Text('Boarding Pass',
        style: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Container(
              height: MediaQuery.of(context).size.height*0.65,
              width: MediaQuery.of(context).size.width*0.92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white
              ),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const  Image(
                        height: 80,
                        width: 80,
                        image: AssetImage('assets/images/acela.png')),
                        Text.rich(TextSpan(
                          children: [
                            TextSpan(
                              text: 'Acela \n' ,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.darkBlue
                              )
                            ),
                            TextSpan(
                              text: '2248 acela',
                              style: TextStyle(
                                color: AppColors.grey,
                                fontSize: 12,
                              )
                            )
                          ]
                        ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width*0.78,
                      color: AppColors.grey.withOpacity(0.6),
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
                                text: 'New York, NY \n',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.grey.withOpacity(0.6),
                                ),
                              ),
                              TextSpan(
                                text: 'NYC \n',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.darkBlue
                                ),
                              ),
                              TextSpan(
                                text: 'Feb 20, 06:15 AM',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.grey.withOpacity(0.6)
                                )
                              ),
                              
                            ]
                        )),
                        TrainWithLine(),
            
                        RichText(
                          textAlign: TextAlign.end,
                   text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Boston, MA \n',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.grey.withOpacity(0.6),
                          ),
                        ),
                        TextSpan(
                          text: 'BBY \n',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkBlue
                          ),
                        ),
                        TextSpan(
                          text: 'Feb 20, 06:15 AM',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.grey.withOpacity(0.6)
                          )
                        )
                      ]
                  )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width*0.78,
                      color: AppColors.grey.withOpacity(0.6),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DoubleText(
                            firstText: 'Train No', 
                            secondText: '224MP'),
                          DoubleText(
                          firstText: 'Passenger', 
                          secondText: '1 Adult'),
                          ],
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DoubleText(
                            
                            firstText: 'Class', 
                            secondText: 'Business'),
                          DoubleText(
                          firstText: 'Seat', 
                          secondText: 'Seat 3C'),
                          ],
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DoubleText(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            alignment: Alignment.centerRight,
                            firstText: 'Ticket ID', 
                            secondText: 'A098674'),
                          DoubleText(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            alignment: Alignment.centerRight,
                          firstText: 'Baggage', 
                          secondText: '20kg'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),
                 Stack(
                  children: [
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width*1.2,
                    ),
                    Positioned(
                      top: 15,
                      child: Container(
                        height: 1,
                         width: MediaQuery.of(context).size.width,
                         color: AppColors.grey.withOpacity(0.4),
                      ),),
                    Positioned(
                      left: -10,
                      child: CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.darkBlue,)),
                      Positioned(
                        right: -10,
                      child: CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.darkBlue,)),
                  ],
                 ),
                 const SizedBox(height: 20,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: BarcodeWidget(
                    barcode: Barcode.ean13(),
                    data: '978119550825',
                    errorBuilder: (context, error) => Center(child: Text(error)),
                    width: 400,
                    height: 100,
                                   ),
                 ),
               ]
              ),
            ),
          ),
          const SizedBox(height: 45,),
          CustomBtn(btnName: 'Download Ticket', width: 350),
          const SizedBox(height: 25,)
        ],
      ),
    );
  }
}