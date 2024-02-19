import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:fluffy_challenge_week6/widgets/custom_btn.dart';
import 'package:fluffy_challenge_week6/widgets/index.dart';
import 'package:fluffy_challenge_week6/widgets/routes_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'route_pricing.dart';

class BookingsView extends StatefulWidget {
   BookingsView({super.key});

  @override
  State<BookingsView> createState() => _BookingsViewState();
}

class _BookingsViewState extends State<BookingsView> {
 double borderRadius = 12;
 TextEditingController pickUpController = TextEditingController();
 TextEditingController destinationController = TextEditingController();
 TextEditingController dateController = TextEditingController();
 bool isGrey = false;
 bool _switchValue = true;

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
                  height: MediaQuery.of(context).size.height*0.23,
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
                      ),
                      const SizedBox(height: 5,)
                    ],
                  ),
                ),

              )
            ],
          ),
           Positioned(
          top: 200,
          left: 18,
         // right: 10,
          height: MediaQuery.of(context).size.height*0.45,
          width: MediaQuery.of(context).size.width*0.90,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Form(child: 
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextFormField(
                      controller: pickUpController,
                      style: TextStyle(color: AppColors.darkBlue),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: SizedBox(
                            width: 60,
                            child: Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.center,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                  Icon(
                                  Icons.train,
                                  color: AppColors.darkBlue,
                                ),
                                Container(
                                  width: 1,
                                  height: 20,
                                  color: AppColors.grey.withOpacity(0.6),
                                )
                              ],
                            ),
                          ),
                          hintText: "New York, NY",
                          iconColor: AppColors.darkBlue,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius:
                                BorderRadius.circular(borderRadius),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(borderRadius),
                          ),
                          filled: false,
                          // fillColor:Colors.black.withOpacity(0.1),
                          hintStyle:
                                TextStyle(color: AppColors.darkBlue)),
                      onChanged: (value){
                        setState(() {
                          isGrey = false;
                        });
                      },
                      enabled: !isGrey,
                      keyboardType: TextInputType.number,
                      
                    ),
                    TextFormField(
                      controller: destinationController,
                      style: TextStyle(color: AppColors.darkBlue),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: SizedBox(
                            width: 60,
                            child: Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.center,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                  Icon(
                                  Icons.train,
                                  color: AppColors.darkBlue,
                                ),
                                Container(
                                  width: 1,
                                  height: 20,
                                  color: AppColors.grey.withOpacity(0.6),
                                )
                              ],
                            ),
                          ),
                          hintText: "Boston, MA",
                          iconColor: AppColors.darkBlue,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius:
                                BorderRadius.circular(borderRadius),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(borderRadius),
                          ),
                          filled: false,
                          // fillColor:Colors.black.withOpacity(0.1),
                          hintStyle:
                                TextStyle(color: AppColors.darkBlue)),
                      onChanged: (value){
                        setState(() {
                          isGrey = false;
                        });
                      },
                      enabled: !isGrey,
                      keyboardType: TextInputType.number,
                      
                    ),
                    TextFormField(
                      controller: dateController,
                      style: TextStyle(color: AppColors.darkBlue),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: SizedBox(
                            width: 65,
                           
                            child: Column(
                              children: [
                                Text('Return?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.grey.withOpacity(0.6),
                                  fontSize: 10
                                ),),
                               CupertinoSwitch(
                                    value: _switchValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _switchValue = value;
                                      });
                                    },
                                  ),
                              ],
                            ),
                          ),
                          prefixIcon: SizedBox(
                            width: 60,
                            child: Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.center,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                  Icon(
                                  Icons.calendar_view_day_rounded,
                                  color: AppColors.darkBlue,
                                ),
                                Container(
                                  width: 1,
                                  height: 20,
                                  color: AppColors.grey.withOpacity(0.6),
                                )
                              ],
                            ),
                          ),
                          hintText: "Thu, Jan 1",
                          iconColor: AppColors.darkBlue,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius:
                                BorderRadius.circular(borderRadius),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey),
                            borderRadius:
                                BorderRadius.circular(borderRadius),
                          ),
                          filled: false,
                          // fillColor:Colors.black.withOpacity(0.1),
                          hintStyle:
                                TextStyle(color: AppColors.darkBlue)),
                      onChanged: (value){
                        setState(() {
                          isGrey = false;
                        });
                      },
                      enabled: !isGrey,
                      keyboardType: TextInputType.number,
                      
                    ),
                    CustomBtn(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RoutePricing()));
                      },
                      width: MediaQuery.of(context).size.width*0.92,
                      btnName: 'Search Bus')
                    ],
                  ),
                )) ),
                Positioned(
                  right: 25,
                  top: 82,
                  child: CircleAvatar(
                  backgroundColor: Colors.grey.shade100,
                  radius: 25,
                  child: const Icon(Icons.swap_vert,
                  weight: 1,
                  ),
                ))
            ],
          ))
        ],
      ),
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: AppColors.darkBlue,
      backgroundColor: AppColors.white,
      unselectedItemColor: AppColors.grey,
      items: const [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(CupertinoIcons.home)),
      BottomNavigationBarItem(
        label: 'Explore',
        icon: Icon(CupertinoIcons.search)),
      BottomNavigationBarItem(
        label: 'My Ticket',
        icon: Icon(CupertinoIcons.ticket)),
      BottomNavigationBarItem(
        label: 'Profile',
        icon: Icon(CupertinoIcons.person)),
    ]),
    );
  }
}