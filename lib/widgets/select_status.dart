import 'package:flutter/material.dart';

class SelectStatus extends StatelessWidget {
  const SelectStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
        )
      ],
    );
  }
}