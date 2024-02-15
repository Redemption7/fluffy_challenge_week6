import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:fluffy_challenge_week6/widgets/index.dart';
import 'package:fluffy_challenge_week6/widgets/routes_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class BookingsView extends StatelessWidget {
  const BookingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white.withOpacity(0.975),
      extendBody: true,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: AppColors.darkBlue,
                height: MediaQuery.of(context).size.height*0.40,
                width: MediaQuery.of(context).size.width,
                child:  SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomAppBar(),
                       Padding(
                         padding: const EdgeInsets.only(left: 18.0),
                         child: Container(
                          width: 280,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.amber,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ), 
                            onPressed: () {},
                            icon:  Icon(LineIcons.angleDoubleRight,
                            size: 16,
                            color: AppColors.darkBlue,),
                            label:  Text('One Way',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: AppColors.darkBlue
                            ),
                            ),
                            ),
                           
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                               backgroundColor: AppColors.darkBlue,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: AppColors.grey
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ), 
                            onPressed: () {},
                            icon:  Icon(LineIcons.syncIcon,
                            color: AppColors.grey,),
                            label:  Text('Round trip',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: AppColors.grey
                            ),
                            ),
                            ),
                            ],
                           ),
                         ),
                       )
                    ],
                  ),
                ),
              ),
              SafeArea(
                child:  Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Popular Routes',
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontWeight: FontWeight.w700,
                              fontSize: 16
                            ),
                            ),
                            Text('See all',
                            style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 12
                            ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(3, (index) => RoutesCard())
                        ),
                      )
                    ],
                  ),
                ),

              )
            ],
          ),
           Positioned(
          top: 210,
          left: 18,
         // right: 10,
          height: 450,
          width: MediaQuery.of(context).size.width*0.92,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Text('good afternoon')))
        ],
      ),
    
    );
  }
}