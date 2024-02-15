import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Uptrain',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white
                ),),
                const SizedBox(height: 5,),
                 Text('Book your next bus!',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.grey
                ),),
              ],
            ),
            CircleAvatar(
              radius: 26,
              backgroundColor: AppColors.grey,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColors.darkBlue,
                    child: IconButton(onPressed: (){},
                     icon:  Icon(Icons.notifications_outlined,
                     color: AppColors.white,
                     size: 25,
                     )),
                  ),
                  Positioned(
                    right: 18,
                    top: 18,
                    child: CircleAvatar(
                      backgroundColor: AppColors.red,
                      radius: 3,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}