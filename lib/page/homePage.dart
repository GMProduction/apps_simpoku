import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simpoku_apps/genosLib/component/card/genCard.dart';
import 'package:simpoku_apps/genosLib/component/etc/commonPadding.dart';
import 'package:simpoku_apps/genosLib/component/etc/genDimen.dart';
import 'package:simpoku_apps/genosLib/component/page/genPage.dart';
import 'package:simpoku_apps/genosLib/genColor.dart';

import '../genosLib/component/etc/genRow.dart';
import '../genosLib/component/etc/genShadow.dart';
import '../genosLib/component/textfield/textField.dart';
import '../genosLib/genText.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_960_720.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return GenPage(
      appbar: Container(
        color: GenColor.primaryColor,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                  child: Center(
                      child: InkWell(
                          onTap: () {
                            // Navigator.of(context).pop();
                          },
                          child: CommonPadding(child: TextfieldRound(prefixIcon: Icon(Icons.search), hintText: "Cari Simposium", ))

                          )
                      )),
              Container(
                  child: Center(
                      child: InkWell(
                          onTap: () {
                            Navigator.popAndPushNamed(context, "login");
                          },
                          child: Icon(Icons.account_circle, color: Colors.white, size: 40, )))),
              SizedBox(width: 20,)
              // GenText(
              //   "QR Code",
              //   style: TextStyle(color: Colors.black87, fontSize: 35),
              // )
            ]),
            SizedBox(height: 10,),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: GenColor.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GenText("Hi, (Nama User)", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                        GenText("Dokter spesialis ", style: TextStyle( color: Colors.white54),),
                        SizedBox(height: 5,),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    )
                    ,child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GenText("Saldo", style: TextStyle()),
                        GenText("Rp 50.000 ", style: TextStyle( color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(height: GenDimen.afterContent,),
              CommonPadding(child: GenText("Promo yang tersedia", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),)),
              CommonPadding(child: GenText("Promo ini sangat cocok buat kamu", style: TextStyle(fontSize: 12, color: Colors.black54),)),
              SizedBox(height: 10,),
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
                  pagination: new SwiperPagination(
                    builder: new DotSwiperPaginationBuilder(
                        color: Colors.white, activeColor: GenColor.primaryColorLight)
                  ),
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
                      ontap: (){
                        Navigator.pushNamed(context, "detail");
                      },
                      gambar:
                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
                      judul: "SCESAP (International Symposium)",
                      kota: "Solo",
                      tanggal: "15 Juni 2022",
                    ),

                    GenCardVertical(
                      ontap: (){
                        Navigator.pushNamed(context, "detail");
                      },
                      gambar:
                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
                      judul: "SCESAP (International Symposium)",
                      kota: "Solo",
                      tanggal: "15 Juni 2022",
                    ),

                    GenCardVertical(
                      ontap: (){
                        Navigator.pushNamed(context, "detail");
                      },
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
