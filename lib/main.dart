import 'package:flutter/material.dart';
import 'package:japp_io_st/screens/Homesrc.dart';
import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Japp.io',
      // theme can be added here :)
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //       primary: pcolor,
      //       secondary: scolor,
      //     ),
      //     visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: Homesrc(),
    );
  }
}
