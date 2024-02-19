import 'package:dotted_line/dotted_line.dart';
import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:fluffy_challenge_week6/views/choose_seat.dart';
import 'package:fluffy_challenge_week6/widgets/custom_btn.dart';
import 'package:fluffy_challenge_week6/widgets/ticket_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/route_details.dart';

class TicketOptions extends StatelessWidget {
  const TicketOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,
        color: AppColors.darkBlue,
        )),
        title: Text('Ticket Options',
        style: TextStyle(
          color: AppColors.darkBlue,
          fontWeight: FontWeight.bold,
          fontSize: 16
        ),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        RouteDetails(),
        Text('Select your class',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.darkBlue
        ),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(3, (index) 
            => Padding(
              padding: const EdgeInsets.all(8.0),
              child: TicketClass(
              iconData1: Icons.power_input_outlined, 
              //iconData2: CupertinoIcons.add, 
              iconData3: Icons.list, 
              iconData4: Icons.cancel,
              packageName1: 'Power plugs',
              packageName2: 'Extra legroom',
              packageName3: 'Semi refundable',
              packageName4: 'Non exchangeable',
              price: '0.00',
              ticketClass: 'Standard',),
            )),
          ),
        ),
       
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Seating',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.darkBlue,
            fontSize: 16
          ),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            textColor: AppColors.grey.withOpacity(0.3),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChooseSeat()));
            },
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.green.withOpacity(0.2)
              ),
              child: Icon(Icons.chair, color: AppColors.green,),
            ),
            title: Text('Seat Number',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontWeight: FontWeight.bold
            ),),
            subtitle: Text('Add preferences',
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 12
            ),),
            trailing: Icon(Icons.keyboard_arrow_right, color: AppColors.grey,),
          ),
        ),
        
        ],
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(
                    text: 'Trip total \n',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 12
                    ),
                    children: [
                      TextSpan(
                        text: '\$152.00',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.darkBlue,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ]
                  )),
                  CustomBtn(
                    onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                   height:900,
                    decoration: BoxDecoration(
                    color: AppColors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text('Journey',
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),),
                           IconButton(onPressed: (){
                                Navigator.pop(context);
                           }, icon: Icon(Icons.cancel,
                            color: AppColors.grey,),)
                          ],),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12,),
                        child: Divider(height: 10,color: AppColors.grey,),
                      ),
                      RouteDetails(),
                     Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15,),
                        child: Divider(height: 10,color: AppColors.grey,),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 200,
                            width: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.darkBlue
                                  ),
                                  child: Icon(Icons.train, color: AppColors.white,)),
                                 Column(
                                   children: [
                                     Container(
                                        height: 50,
                                        width: 1,
                                        color: AppColors.darkBlue
                                      ),
                                      CircleAvatar(
                                    radius: 4,
                                   backgroundColor: AppColors.darkBlue,
                                   child: CircleAvatar(
                                    radius: 3,
                                    backgroundColor: AppColors.amber,
                                   ),
                                  ),
                                  DottedLine(
                                    direction: Axis.vertical,
                                    lineLength: 50,
                                    dashColor: AppColors.darkBlue,
                                  ),
                                   ],
                                 ),
                                  
                                  Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.darkBlue
                                  ),
                                  child: Icon(Icons.location_pin, color: AppColors.white,)),
                            
                              ],
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Container(
                            height: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(TextSpan(
                                  text: 'Penn Station \n',
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 12,
                                  ),
                                  children: [
                                    TextSpan(
                                    text: '06:15 AM, New York, NY',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.darkBlue,
                                      fontSize: 14
                                    )
                                  )
                                  ]
                                )),
                                 Container(
                                  alignment: Alignment.center,
                                  height: 25,
                                  width: 90,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                                  color: AppColors.grey.withOpacity(0.3)),
                                  child: Row(
                                    children: [
                                      Icon(Icons.punch_clock, color: AppColors.grey,),
                                      Text('3h 45m',
                                      style: TextStyle(
                                        color: AppColors.grey
                                      ),),
                                    ],
                                  ),
                                ),
                                Text.rich(TextSpan(
                                  text: 'Back Bay Station \n',
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 12,
                                  ),
                                  children: [
                                    TextSpan(
                                    text: '10:03 AM, New York, NY',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.darkBlue,
                                      fontSize: 14
                                    )
                                  )
                                  ]
                                )),
                              ],
                            ),
                          )
                        ],
                      ),
                      ],
                  
                    ),
                  );
                },
              );
                    },
                  btnName: 'Continue', 
                  height: 50,
                  width: 150)
              
              ],
              ),
            ),
          ),
        ),
    );
  }
}