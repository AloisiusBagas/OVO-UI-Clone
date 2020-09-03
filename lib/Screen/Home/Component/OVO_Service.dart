import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ovo_ui/Constant/Color.dart';
import 'package:ovo_ui/Screen/TopUp/TopUpPage.dart';

class TopUpService extends StatelessWidget {
  const TopUpService({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(19, 24, 19, 17),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.15),
                offset: Offset(2, 2),
                blurRadius: 10),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TopupBTN(
            iconpath: "assets/icons/topup_icon.svg",
            text: "Top Up",
            onpress: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => TopUpPage()));
            },
          ),
          TopupBTN(
            iconpath: "assets/icons/transfer_icon.svg",
            text: "Transfer",
            onpress: () {},
          ),
          TopupBTN(
            iconpath: "assets/icons/history_icon.svg",
            text: "History",
            onpress: () {},
          ),
        ],
      ),
    );
  }
}

class TopupBTN extends StatelessWidget {
  final Function onpress;
  final String iconpath;
  final String text;

  const TopupBTN({
    Key key,
    this.iconpath,
    this.text,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 12),
        child: Container(
          color: Colors.white,
          width: (MediaQuery.of(context).size.width - 38) / 4,
          child: Column(
            children: <Widget>[
              SvgPicture.asset(
                iconpath,
                height: 26,
              ),
              SizedBox(height: 8),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: darkpurple),
              )
            ],
          ),
        ),
      ),
    );
  }
}
