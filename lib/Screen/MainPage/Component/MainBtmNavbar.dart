import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ovo_ui/Constant/Color.dart';

class MainBottomNavBar extends StatefulWidget {
  final PageController pageController;
  const MainBottomNavBar({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  _MainBottomNavBarState createState() => _MainBottomNavBarState();
}

int currindex = 0;

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: EdgeInsets.zero,
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconBTMAppbar(
              "assets/icons/home.svg",
              "Home",
              0,
            ),
            iconBTMAppbar(
              "assets/icons/deals.svg",
              "Deals",
              1,
            ),
            Container(
              alignment: Alignment.center,
              height: 56,
              width: MediaQuery.of(context).size.width / 5,
              child: Container(
                height: 48,
                width: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Text(
                  "Scan",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: greyicon),
                ),
              ),
            ),
            iconBTMAppbar(
              "assets/icons/finance.svg",
              "Finance",
              2,
            ),
            iconBTMAppbar(
              "assets/icons/profile.svg",
              "Profile",
              3,
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector iconBTMAppbar(String svgpath, String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currindex = index;
          widget.pageController.jumpToPage(0);
          //uncomment this when using Deals page(1), Finance page(2),Profile page(3)
          //widget.pageController.jumpToPage(index);
        });
      },
      child: Tooltip(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(8),
        message: text,
        child: Container(
          color: Colors.white,
          height: 56,
          width: MediaQuery.of(context).size.width / 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                svgpath,
                height: 19,
                colorFilter: ColorFilter.mode(
                    currindex == index ? darkpurple : greyicon,
                    BlendMode.srcIn),
              ),
              SizedBox(height: 3),
              Text(
                text,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: currindex == index ? darkpurple : greyicon),
              )
            ],
          ),
        ),
      ),
    );
  }
}
