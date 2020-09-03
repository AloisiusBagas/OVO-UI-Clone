import 'package:flutter/material.dart';
import 'package:ovo_ui/Constant/Color.dart';

class OVOCash extends StatelessWidget {
  const OVOCash({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                children: <TextSpan>[
                  TextSpan(text: "OVO ", style: TextStyle(fontSize: 16)),
                  TextSpan(text: "Cash", style: TextStyle(fontSize: 14))
                ]),
          ),
          SizedBox(height: 9),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Rp",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w600)),
              SizedBox(width: 5),
              Text("70.800",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: <Widget>[
              Text("ovo Points",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 14)),
              SizedBox(
                width: 4,
              ),
              Text(
                "28.120",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: orangetext),
              )
            ],
          )
        ],
      ),
    );
  }
}
