import 'package:fluffy_challenge_week6/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatBtn extends StatefulWidget {
   SeatBtn({super.key,
   this.isAvailable =true,
   this.selected =false,
   this.onTap
   });
  bool isAvailable = true;
  bool selected = false;
  VoidCallback? onTap;

  @override
  State<SeatBtn> createState() => _SeatBtnState();
}

class _SeatBtnState extends State<SeatBtn> {
   // bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isAvailable? widget.onTap : (){},
      
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.isAvailable&&!widget.selected? AppColors.grey.withOpacity(0.1) : widget.isAvailable&&widget.selected? AppColors.green : AppColors.grey.withOpacity(0.1),
          border: Border(
            top: widget.isAvailable? BorderSide(color: AppColors.green): BorderSide.none,
            left: widget.isAvailable? BorderSide(color: AppColors.green): BorderSide.none,
            right: widget.isAvailable? BorderSide(color: AppColors.green): BorderSide.none,
            bottom: widget.isAvailable? BorderSide(color: AppColors.green): BorderSide.none,
            ),
        ),
        child: !widget.isAvailable? Icon(Icons.close,color: AppColors.grey, ): Container(),
      
      ),
    );
  }
}