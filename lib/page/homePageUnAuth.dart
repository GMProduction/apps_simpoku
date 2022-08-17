import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simpoku_apps/genosLib/component/card/genCard.dart';
import 'package:simpoku_apps/genosLib/component/etc/genDimen.dart';
import 'package:simpoku_apps/genosLib/component/page/genPage.dart';
import 'package:simpoku_apps/genosLib/genColor.dart';

import '../genosLib/component/etc/genRow.dart';
import '../genosLib/component/etc/genShadow.dart';
import '../genosLib/genText.dart';

class HomePageUnAuth extends StatefulWidget {
  const HomePageUnAuth({Key? key}) : super(key: key);

  @override
  State<HomePageUnAuth> createState() => _HomePageUnAuthState();
}

class _HomePageUnAuthState extends State<HomePageUnAuth> {
  List items = [
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_960_720.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return GenPage(
      appbar: Container(
        width: double.infinity,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                  width: 100,
                  height: 100,
                  child: Center(
                      child: InkWell(
                          onTap: () {
                            // Navigator.of(context).pop();
                          },
                          child: Image.asset(
                            "assets/icons/menu_icon.png",
                            color: Colors.black87,
                          )))),
              Container(
                  width: 80,
                  height: 80,
                  child: Center(
                      child: InkWell(
                          onTap: () {
                            Navigator.popAndPushNamed(context, "login");
                          },
                          child: CircleAvatar(
                            radius: 20.0,
                            child: Image.network(
                                "https://cdn0.iconfinder.com/data/icons/google-material-design-3-0/48/ic_account_circle_48px-512.png"),
                            backgroundColor: Colors.transparent,
                          )))),
              // GenText(
              //   "QR Code",
              //   style: TextStyle(color: Colors.black87, fontSize: 35),
              // )
            ]),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        items[index],
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  pagination: new SwiperPagination(),
                  itemCount: items.length,
                  viewportFraction: 0.92,
                  scale: 0.95,
                ),
              ),
              SizedBox(
                height: GenDimen.afterContent,
              ),
              RowSpaceBetween(
                chilidLeft: GenText(
                  "Event yang akan datang",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                childRight: InkWell(
                    onTap: () {
                      //PINDAH KE HALAMAN LIHAT SEMUA ATAU PENCARIAN
                    },
                    child: GenText(
                      "Lihat Semua",
                      style: TextStyle(color: GenColor.primaryColor),
                    )),
              ),
              SizedBox(
                height: GenDimen.afterTitle,
              ),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GenCardVertical(
                      ontap: (){},
                      gambar:
                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
                      judul: "SCESAP (International Symposium)",
                      kota: "Solo",
                      tanggal: "15 Juni 2022",
                    ),
                    GenCardVertical(
                      ontap: (){},
                      gambar:
                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
                      judul: "SCESAP (International Symposium)",
                      kota: "Solo",
                      tanggal: "15 Juni 2022",
                    ),
                    GenCardVertical(
                      ontap: (){},
                      gambar:
                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
                      judul: "SCESAP (International Symposium)",
                      kota: "Solo",
                      tanggal: "15 Juni 2022",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: GenDimen.afterContent,
              ),
              RowSpaceBetween(
                chilidLeft: GenText(
                  "Artikel",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                childRight: InkWell(
                    onTap: () {
                      //PINDAH KE HALAMAN LIHAT SEMUA ARTIKEL
                    },
                    child: GenText(
                      "Lihat Semua",
                      style: TextStyle(color: GenColor.primaryColor),
                    )),
              ),
              SizedBox(
                height: GenDimen.afterTitle,
              ),
              Column(
                children: [
                  GenCardArtikel((){}, judul: "Tikus Dapat Menyebarkan Covid - 22", isi: "Most people who fall sick with COVID-19 will experience ...", tanggal: "11 Juli 2022",),
                  GenCardArtikel((){}),
                  GenCardArtikel((){}),
                  GenCardArtikel((){}),
                ],
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
