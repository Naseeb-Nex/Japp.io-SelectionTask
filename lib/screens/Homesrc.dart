import 'package:flutter/material.dart';
import 'package:japp_io_st/constants/colors.dart';

class Homesrc extends StatefulWidget {
  const Homesrc({Key? key}) : super(key: key);

  @override
  State<Homesrc> createState() => _HomesrcState();
}

class _HomesrcState extends State<Homesrc> {
  String cal_type = "day"; // calendar type

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
            padding:
                EdgeInsets.only(top: s.height * 0.02, bottom: s.height * 0.04),
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
                      fontWeight: FontWeight.w700,
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
          // calander type selection row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: s.width * 0.03),
            child: Row(
              children: [
                // Day selection
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: InkWell(
                    onTap: () => setState(() {
                      cal_type = "day";
                    }),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: s.height * 0.015),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cal_type == "day" ? pcolor : white,
                      ),
                      child: Center(
                        child: Text(
                          "Day",
                          style: TextStyle(
                            fontSize: 15,
                            color: cal_type == "day" ? white : gray,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Nunito",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // week selection
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: InkWell(
                    onTap: () => setState(() {
                      cal_type = "week";
                    }),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: s.height * 0.015),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cal_type == "week" ? pcolor : white,
                      ),
                      child: Center(
                        child: Text(
                          "Week",
                          style: TextStyle(
                            fontSize: 15,
                            color: cal_type == "week" ? white : gray,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Nunito",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // month
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: InkWell(
                    onTap: () => setState(() {
                      cal_type = "month";
                    }),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: s.height * 0.015),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cal_type == "month" ? pcolor : white,
                      ),
                      child: Center(
                        child: Text(
                          "Month",
                          style: TextStyle(
                            fontSize: 15,
                            color: cal_type == "month" ? white : gray,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Nunito",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // year selection
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: InkWell(
                    onTap: () => setState(() {
                      cal_type = "year";
                    }),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: s.height * 0.015),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cal_type == "year" ? pcolor : white,
                      ),
                      child: Center(
                        child: Text(
                          "Year",
                          style: TextStyle(
                            fontSize: 15,
                            color: cal_type == "year" ? white : gray,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Nunito",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
          // chart
          // list
        ]),
      )),
    );
  }
}
