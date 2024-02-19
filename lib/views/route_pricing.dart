import 'package:dotted_line/dotted_line.dart';
import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:fluffy_challenge_week6/widgets/horizontal_calender.dart';
import 'package:fluffy_challenge_week6/widgets/place_text.dart';
import 'package:fluffy_challenge_week6/widgets/route_details.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'ticket_options.dart';

class RoutePricing extends StatelessWidget {
  const RoutePricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.darkBlue,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back, color: AppColors.white,)),
          actions: [IconButton(onPressed: 
          (){}, 
          icon: Icon(LineIcons.filter, color: AppColors.white,))],
      ),
      body: Column(
        children: [
      
          SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height*0.13,
                    width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: MediaQuery.of(context).size.height*0.13,
                    width: MediaQuery.of(context).size.width,
                    color: AppColors.darkBlue,),
                     Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PlaceText(
                        cityName: 'New York, NY',
                        shortForm: 'NYP',
                      ),
                      Stack(
                        children: [
                          Container(
                           // color: Colors.red,
                            height: 50,
                            width: MediaQuery.of(context).size.width*0.51,
                          ),
                          Positioned(
                            top: 22,
                            child: Row(
                              children: [
                                Icon(Icons.circle_outlined, size: 12, color: AppColors.grey,),
                                DottedLine(
                                  dashColor: AppColors.grey,
                                  lineLength: MediaQuery.of(context).size.width*0.45,),
                                Icon(Icons.circle_outlined, size: 12, color: AppColors.grey,)
                              ],
                            ),
                          ),
                          Positioned(
                          top: 18,
                            left: MediaQuery.of(context).size.width*0.45/2,
                            child: Icon(Icons.train, color: AppColors.grey,))
                        ],
                      ),
                      PlaceText(
                        cityName: 'Boston, MA',
                        shortForm: 'BBY',
                      )
                    ],
                  ), 
                      ],
                    ),
                    Positioned(
                          bottom: -21.5,
                          child: Container(width: MediaQuery.of(context).size.width,
                            child: const HorizontaCalendar())),
                ],
              ),
            ),
          ),
          
         Expanded(
           child: Container(
            height: MediaQuery.of(context).size.height*0.50,
            width: MediaQuery.of(context).size.width,
            color: AppColors.white,
                     //   decoration: BoxDecoration(
                     //  //   color: AppColors.red
                     //   ),
            child: SingleChildScrollView(
           
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(4, (index) =>  RouteDetails(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TicketOptions()));
                  },
                ))
                ,
              ),
            )
           ),
         ),
        //const SafeArea(child: SizedBox(height: 10)),
        ],
      ),
    ) ;
  }
}