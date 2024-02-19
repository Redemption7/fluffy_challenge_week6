import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:flutter/material.dart';
/// This widget takes the city name and its short-form eg `New York , NY ` and `NYP`
class PlaceText extends StatelessWidget {
   PlaceText({
    super.key,
    this.cityName,
    this.shortForm,
   });
  String? cityName;
  String? shortForm;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(cityName.toString(),
        style: TextStyle(
          color: AppColors.grey,
          fontSize: 10
        ),),
         Text(shortForm.toString(),
        style: TextStyle(
          color: AppColors.white,
          fontSize: 32
        ),),
      ],
    );
  }
}