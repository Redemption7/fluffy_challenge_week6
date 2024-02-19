import 'package:fluffy_challenge_week6/views/boarding_pass.dart';
import 'package:fluffy_challenge_week6/views/bookings_view.dart';
import 'package:fluffy_challenge_week6/views/choose_seat.dart';
import 'package:fluffy_challenge_week6/views/route_pricing.dart';
import 'package:flutter/material.dart';

import 'views/ticket_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fluffy Challenge week 6',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  BookingsView(),
    );
  }
}

