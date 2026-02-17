import 'package:flutter/material.dart';
import 'package:ovo_ui/Constant/Color.dart';

class InfoMenarik extends StatelessWidget {
  const InfoMenarik({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 25, bottom: 17, left: 19, right: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Yang Menarik di OVO",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 6),
          Text(
            "Jangan ngaku update kalau belum cobain fitur ini",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InfoCard(
                imgpath: "assets/images/27122.jpg",
                title: "Pusat Bantuan",
                desc:
                    "Punya kenadala atau pertanyaan terkait OVO? kamu bisa kirim disini",
                textbutton: "Lihat Bantuan",
                onpress: () {},
              ),
              InfoCard(
                imgpath: "assets/images/27053.jpg",
                title: "Asuransi Bebas Premi",
                desc:
                    "apatkan asuransi kecelakaan & penyakit infeksi virus bebas premi",
                textbutton: "Daftar Sekarang",
                onpress: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final VoidCallback? onpress;
  final String imgpath;
  final String title;
  final String desc;
  final String textbutton;

  const InfoCard({
    Key? key,
    required this.title,
    required this.desc,
    required this.imgpath,
    required this.textbutton,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double radius = 8.0;
    return GestureDetector(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                color: Colors.black.withOpacity(0.15),
                blurRadius: 8)
          ],
          borderRadius: BorderRadius.circular(radius),
        ),
        width: (MediaQuery.of(context).size.width - 57) * 0.5,
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(radius)),
              child: Container(
                height: 83,
                width: double.infinity,
                child: Image.asset(
                  imgpath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(9, 13, 9, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  SizedBox(height: 14),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 12, color: greytext),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      textbutton,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: cyantext),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
