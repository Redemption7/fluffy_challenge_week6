import 'package:flutter/material.dart';

import '../constants/colors.dart';

class RoutesCard extends StatelessWidget {
  const RoutesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: MediaQuery.of(context).size.height*0.12,
          width: MediaQuery.of(context).size.width*0.82,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.grey.withOpacity(0.05)
          ),
        child:  Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.1,
                width: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image:const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/tower.jpeg'))
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('London to Paris',
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  const SizedBox(height: 8,),
                  RichText(text: TextSpan(
                   children: [
                    TextSpan(
                      text: 'From \n',
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColors.grey
                      ),
                    ),
                    TextSpan(
                      text: '\$39.74',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.darkBlue
                      ),
                      
                    )
          
                   ]
                  ))
                ],
              ),
              Row(
                children: [
                  Icon( 
                    Icons.star,
                    color: AppColors.amber,
                  ),
                  Text('4.5',
                  style: TextStyle(
                    color: AppColors.grey
                  ),)
                ],
              )
            ],),
        )
        ),
    );
  }
}