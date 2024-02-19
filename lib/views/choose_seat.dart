import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:fluffy_challenge_week6/views/boarding_pass.dart';
import 'package:fluffy_challenge_week6/widgets/double_text.dart';
import 'package:fluffy_challenge_week6/widgets/index.dart';
import 'package:flutter/material.dart';

import '../helpers/seats_list.dart';

class ChooseSeat extends StatefulWidget {
   ChooseSeat({super.key});

  @override
  State<ChooseSeat> createState() => _ChooseSeatState();
}

class _ChooseSeatState extends State<ChooseSeat> {
  String seatNumber = '';
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back, color: AppColors.darkBlue,)),
        title:  Text('Choose Seat',
        style: TextStyle(
          color: AppColors.darkBlue,
        ),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15,),
        Container(
          height: MediaQuery.of(context).size.height*0.56,
          width: MediaQuery.of(context).size.width*0.88,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.darkBlue,
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:  [
                 Text.rich(TextSpan(
                  text: 'NYP \n',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                    text: 'Oct 20 - 06:15 AM',
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 10
                    )
                  )
                  ]
                )),
                 const TrainWithLine(),
                    Text.rich(TextSpan(
                      text: 'BBY \n',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                      ),
                     children: [
                        TextSpan(
                        text: 'Oct 20 - 10:15 AM',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.grey,
                          fontSize: 10
                        )
                      )
                     ]
                    ),)
                  ],
                ),
             ),
              Container(
             height: MediaQuery.of(context).size.height*0.47,
             width: MediaQuery.of(context).size.width*0.88,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.white
             ),
             child: 
             Card(
              color: AppColors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('A',
                            style: TextStyle(
                              color: AppColors.grey
                            ),),
                            Container(
                                height: MediaQuery.of(context).size.height*0.32,
                              width: 60,
                              child: ListView.builder(
                                itemCount: columnAseats.length,
                                itemBuilder: (context, int index){
                                  final seat = columnAseats[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SeatBtn(
                                      onTap: () {
                                        setState(() {
                                        selected = !selected;
                                        seat.selected = selected;
                                        seatNumber = seat.seatNumber;
                                        });
                                       
                                      },
                                      selected: seat.selected,
                                      isAvailable: seat.isAvailable,
                                     // selected: seat.selected,
                                    ),
                                  );
                              }),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text('B',
                            style: TextStyle(
                              color: AppColors.grey
                            ),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.32,
                              width: 58,
                              child: ListView.builder(
                                itemCount: columnBseats.length,
                                itemBuilder: (context, int index){
                                  final seat = columnBseats[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SeatBtn(
                                      isAvailable: seat.isAvailable,
                                     onTap: () {
                                        setState(() {
                                        selected = !selected;
                                        seat.selected = selected;
                                        seatNumber = seat.seatNumber;
                                        });
                                       
                                      },
                                      selected: seat.selected,
                                    ),
                                  );
                              }),
                            ),
                            
                          ],
                        ),
                         Container(
                               height: MediaQuery.of(context).size.height*0.32,
                              width: 58,
                              child: ListView.builder(
                                itemCount: columnAseats.length,
                                itemBuilder: (context, int index){
                                  final seat = columnAseats[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(19.0),
                                    child: Text('${index+1}')
                                  );
                              }),
                            ),
                        Column(
                          children: [
                            Text('C',
                            style: TextStyle(
                              color: AppColors.grey
                            ),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.32,
                              width: 58,
                              child: ListView.builder(
                                itemCount: columnCseats.length,
                                itemBuilder: (context, int index){
                                  final seat = columnCseats[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SeatBtn(
                                     onTap: () {
                                        setState(() {
                                        selected = !selected;
                                        seat.selected = selected;
                                        seatNumber = seat.seatNumber;
                                        });
                                       
                                      },
                                      selected: seat.selected,
                                      isAvailable: seat.isAvailable,
                                     // selected: seat.selected,
                                    ),
                                  );
                              }),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('D',
                            style: TextStyle(
                              color: AppColors.grey
                            ),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.32,
                              width: 58,
                              child: ListView.builder(
                                itemCount: columnDseats.length,
                                itemBuilder: (context, int index){
                                  final seat = columnDseats[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SeatBtn(
                                      isAvailable: seat.isAvailable,
                                     onTap: () {
                                        setState(() {
                                        selected = !selected;
                                        seat.selected = selected;
                                        seatNumber = seat.seatNumber;
                                        });
                                       
                                      },
                                      selected: seat.selected,
                                    ),
                                  );
                              }),
                            ),
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 5,
                      color: AppColors.grey.withOpacity(0.15),
                      ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.green,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Text('Selected',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),)
                    
                    ],
                   ),
                    Row(
                    children: [
                      Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.white,
                      border: Border.all(color: AppColors.green)
                    ),
                    ),
                    const SizedBox(width: 5,),
                    Text('Available',
                    style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),)
                ],
                ),
                  Row(
                    children: [
                      Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.grey.withOpacity(0.3),
                    ),
                    ),
                    const SizedBox(width: 5,),
                    Text('UnAvailable',
                    style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),)
                ],
                ),
                ])
                )  ],)
              ),
             ),
              
            ],
          ),
        ),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: AppColors.grey.withOpacity(0.1)))
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Standard \n',
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                      children: [
                        TextSpan(
                          text: 'Seat $seatNumber',
                          style: TextStyle(
                            color: AppColors.darkBlue,
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ]
                    )
                  )
                ],
              ),
              CustomBtn(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> BoardingPass()));
                },
                btnName: 'Confirm', 
                height: 50,
                width: 150)
            ],
          ),
        ),
      ),
    );
  }
}