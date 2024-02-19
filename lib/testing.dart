import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:fluffy_challenge_week6/widgets/horizontal_calender.dart';
import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: HorizontaCalendar()
      ),
    );
  }
}