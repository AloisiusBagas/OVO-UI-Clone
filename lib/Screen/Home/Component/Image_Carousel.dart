import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ovo_ui/Constant/Color.dart';
import 'package:url_launcher/url_launcher.dart';

class Carouselmodel {
  String imgpath;
  VoidCallback? onpress;
  Carouselmodel({required this.imgpath, this.onpress});
}

launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

final List<Carouselmodel> imgList = [
  new Carouselmodel(
      imgpath: 'assets/images/OVO_new-user_landingpage.jpg',
      onpress: () {
        launchURL(
            "https://www.grab.com/id/en/blog/transaksi-di-merchant-pilihan-ovo-cashback-30/");
      }),
  new Carouselmodel(
      imgpath: 'assets/images/CLBK-OVO.jpg',
      onpress: () {
        launchURL("https://www.ovo.id/deals/view/27247");
      }),
  new Carouselmodel(
      imgpath: 'assets/images/bayardisini.jpg',
      onpress: () {
        launchURL("https://www.ovo.id/");
      }),
  new Carouselmodel(
      imgpath: 'assets/images/sos.jpg',
      onpress: () {
        launchURL("https://ovo.id/deals/view/27015");
      }),
  new Carouselmodel(
      imgpath: 'assets/images/double.jpg',
      onpress: () {
        launchURL("https://www.ovo.id/deals/view/23786");
      }),
];

final List<Widget> imageSliders = imgList
    .map((Carouselmodel c) => Container(
          child: GestureDetector(
            onTap: c.onpress,
            child: Container(
              margin: EdgeInsets.only(right: 7.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                child: Image.asset(c.imgpath, fit: BoxFit.cover, width: 1000.0),
              ),
            ),
          ),
        ))
    .toList();

class Imagecarousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImagecarouselState();
  }
}

class _ImagecarouselState extends State<Imagecarousel> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              height: 126,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: imageSliders,
        ),
        SizedBox(
          height: 13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            int index = imgList.indexOf(url);
            return Container(
              width: 6.0,
              height: 6.0,
              margin: EdgeInsets.symmetric(horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? cyantext : Colors.grey[300],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
