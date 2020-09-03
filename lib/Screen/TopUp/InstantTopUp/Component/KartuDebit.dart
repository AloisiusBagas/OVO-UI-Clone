import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ovo_ui/Constant/Color.dart';

class PilihKartuDebit extends StatelessWidget {
  const PilihKartuDebit({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(19, 20, 19, 58),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kartu Debit",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 18),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(color: cyantext, width: 2.0),
              color: Colors.grey[100],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/kredit_icon.svg"),
                  Text(
                    "Tambah Kartu Debit BCA",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
