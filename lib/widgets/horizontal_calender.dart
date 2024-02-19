import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:flutter/material.dart';

class HorizontaCalendar extends StatelessWidget {
  const HorizontaCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      dayProps: const EasyDayProps(
        
        height: 56.0,
        // You must specify the width in this case.
        width: 80.0,
      ),
      headerProps: const EasyHeaderProps(
        showHeader: false,
        dateFormatter: DateFormatter.fullDateMonthAsStrDY(),
      ),
      itemBuilder: (BuildContext context, String dayNumber, dayName, monthName,
          fullDate, isSelected) {
        return Container(
          //the same width that provided previously.
          width: 80.0,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
          //  color: isSelected ? const Color(0xffFF6D60) : null,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    monthName,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: isSelected? FontWeight.bold : FontWeight.normal,
                      color: isSelected ? Colors.amber : AppColors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    dayNumber,
                    style: TextStyle(
                     fontSize: 14,
                      fontWeight: isSelected? FontWeight.bold : FontWeight.normal,
                      color: isSelected ? Colors.amber : AppColors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                 
                 
                ],
              ),
              const SizedBox(height: 12,),
            isSelected?  Container(
                height: 5,
                width: 85,
                color: AppColors.amber,
              )
              : const  SizedBox()
            ],
          ),
        );
      },
    );
  }
}