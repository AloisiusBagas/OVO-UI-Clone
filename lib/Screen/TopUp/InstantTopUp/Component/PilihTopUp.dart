import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ovo_ui/Constant/Color.dart';

class PilihTopUp extends StatefulWidget {
  const PilihTopUp({
    Key? key,
  }) : super(key: key);

  @override
  _PilihTopUpState createState() => _PilihTopUpState();
}

class _PilihTopUpState extends State<PilihTopUp> {
  late TextEditingController nominalcontroller;
  int amount = 0;
  late FocusNode focusNode;

  @override
  void initState() {
    nominalcontroller = new TextEditingController();
    focusNode = new FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    nominalcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.fromLTRB(16, 16, 22, 40),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pilih Nominal Top Up",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              nominalBTN(100000),
              nominalBTN(200000),
              nominalBTN(500000),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 3),
            child: Text(
              "Atau masukan nominal top up di sini",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          TextField(
            onTap: () {
              setState(() {
                amount = 0;
              });
            },
            focusNode: focusNode,
            controller: nominalcontroller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Minimal Rp10.000",
              filled: true,
              fillColor: greybgcolor,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
            ),
          )
        ],
      ),
    );
  }

  GestureDetector nominalBTN(int nominal) {
    return GestureDetector(
      onTap: () {
        nominalcontroller.clear();
        if (focusNode.hasPrimaryFocus) {
          focusNode.unfocus();
        }
        setState(() {
          amount = nominal;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
              color: nominal == amount ? darkpurple : Colors.transparent),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              offset: Offset(0, 5),
              color: Colors.grey.withOpacity(0.2),
            ),
          ],
        ),
        child: Text(
          NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0)
              .format(nominal),
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
