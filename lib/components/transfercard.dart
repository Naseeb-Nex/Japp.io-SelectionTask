import 'package:flutter/material.dart';
import 'package:japp_io_st/constants/colors.dart';

class TransferCard extends StatefulWidget {
  String? name;
  String? img;
  String? amount;
  String? date;

  TransferCard({Key? key, this.name, this.img, this.amount, this.date})
      : super(key: key);

  @override
  State<TransferCard> createState() => _TransferCardState();
}

class _TransferCardState extends State<TransferCard> {
  @override
  Widget build(BuildContext context) {
    // adaptive Size
    Size s = MediaQuery.of(context).size;

    return Container(
      height: s.height * 0.1,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0XFF3F736F),
          boxShadow: const [
            BoxShadow(
              spreadRadius: 5,
              blurRadius: 10,
              color: Color(0XFFBFD2D1),
              offset:  Offset(0, 6),
            )
          ]),
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
                      color: white,
                    ),
                  ),
                  Text(
                    "${widget.date}",
                    style: const TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: white,
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
                  color: white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
