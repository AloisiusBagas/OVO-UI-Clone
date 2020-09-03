import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceMenu extends StatelessWidget {
  const ServiceMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 27),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ServiceMenuBTN(
                svgpath: "assets/icons/pln_icon.svg",
                text: "PLN",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/pulsa_icon.svg",
                text: "Pulsa",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/paketdata_icon.svg",
                text: "Paket Data",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/air_icon.svg",
                text: "Air PDAM",
                onpress: () {},
              ),
            ],
          ),
          SizedBox(height: 23),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ServiceMenuBTN(
                svgpath: "assets/icons/bpjs_icon.svg",
                text: "BPJS",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/internet_icon.svg",
                text: "Internet & TV kabel",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/iuran_icon.svg",
                text: "Iuran Lingkungan",
                onpress: () {},
              ),
              ServiceMenuBTN(
                svgpath: "assets/icons/lainnya_icon.svg",
                text: "Lainnya",
                onpress: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ServiceMenuBTN extends StatelessWidget {
  final Function onpress;
  final String svgpath;
  final String text;
  const ServiceMenuBTN({
    Key key,
    this.svgpath,
    this.text,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 72) / 4,
      child: Column(
        children: <Widget>[
          SvgPicture.asset(
            svgpath,
            height: 45,
          ),
          SizedBox(height: 4),
          Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ))
        ],
      ),
    );
  }
}
