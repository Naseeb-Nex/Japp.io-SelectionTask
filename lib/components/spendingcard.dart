import 'package:flutter/material.dart';
import 'package:japp_io_st/constants/colors.dart';

class SpendingCard extends StatefulWidget {
  String? name;
  String? img;
  String? amount;
  String? date;

  SpendingCard({Key? key, this.name, this.img, this.amount, this.date})
      : super(key: key);

  @override
  State<SpendingCard> createState() => _SpendingCardState();
}

class _SpendingCardState extends State<SpendingCard> {
  @override
  Widget build(BuildContext context) {
    // adaptive Size
    Size s = MediaQuery.of(context).size;

    return Container(
      height: s.height * 0.1,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0XFFF4F7F7)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: s.width * 0.045,
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("${widget.img}"),
              ),
              SizedBox(
                width: s.width * 0.03,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.name}",
                    style: const TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "${widget.date}",
                    style: const TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFa5a5a5),
                    ),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: s.width * 0.03),
            child: Text(
              "${widget.amount}",
              style: const TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 17,
                  color: Color(0XFFDD6A5D),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
