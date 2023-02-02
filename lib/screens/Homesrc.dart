import 'package:flutter/material.dart';

class Homesrc extends StatefulWidget {
  const Homesrc({Key? key}) : super(key: key);

  @override
  State<Homesrc> createState() => _HomesrcState();
}

class _HomesrcState extends State<Homesrc> {
  @override
  Widget build(BuildContext context) {
    // Screen Size
    Size s = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      // body
      body: SafeArea(
          // Scroll view
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        // main list
        child: Column(children: [
          // padding for the header
          Padding(
            padding: EdgeInsets.only(top: s.height * 0.02, bottom: s.height * 0.015),
            // Appbar Section
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: s.width * 0.03),
                  // back button
                  child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      "assets/icons/left-arrow.png",
                    ),
                  ),
                ),
                // tittle
                const Text(
                  "Statistics",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                // Downloads button
                Padding(
                  padding: EdgeInsets.only(right: s.width * 0.03),
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      "assets/icons/list.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
          // body
            // chart
            // list
        ]),
      )),
    );
  }
}
