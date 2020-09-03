import 'package:flutter/material.dart';

class TopUpSaldo extends StatelessWidget {
  const TopUpSaldo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController topupcont =
        new TextEditingController(text: "OVO Cash");
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //top up saldo ke
          TextFormField(
            enabled: false,
            controller: topupcont,
            style: TextStyle(color: Colors.black, fontSize: 15),
            decoration: InputDecoration(
              labelText: "Top Up Saldo Ke",
              contentPadding: EdgeInsets.only(bottom: 0.0),
            ),
          ),
          SizedBox(height: 24),
          //saldo OVO CAsh
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 7),
            margin: EdgeInsets.symmetric(horizontal: 32),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.grey[300],
                width: 2.0,
              ),
            ),
            child: Column(
              children: [
                Text(
                  "SALDO OVO CASH",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 3),
                Text(
                  "Rp 70.800",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(height: 6),
          Align(
              alignment: Alignment.center,
              child: Text(
                "Maks. Saldo OVO Cash Rp 10.000.000",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Colors.black),
              ))
        ],
      ),
    );
  }
}
