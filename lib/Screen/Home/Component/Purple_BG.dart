import 'package:flutter/material.dart';
import 'package:ovo_ui/Constant/Color.dart';

class PurpleBG extends StatelessWidget {
  const PurpleBG({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Myclipper(),
      child: Container(
        decoration: BoxDecoration(
            color: darkpurple,
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage("assets/images/bgpurple.png"))),
        height: MediaQuery.of(context).size.height * 0.25,
        width: double.infinity,
      ),
    );
  }
}

class Myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 2, size.height + 30, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
