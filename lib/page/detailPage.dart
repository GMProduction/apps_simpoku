import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simpoku_apps/genosLib/component/button/genButton.dart';
import 'package:simpoku_apps/genosLib/component/card/genCard.dart';
import 'package:simpoku_apps/genosLib/component/etc/commonPadding.dart';
import 'package:simpoku_apps/genosLib/component/etc/genDimen.dart';
import 'package:simpoku_apps/genosLib/component/page/genPage.dart';
import 'package:simpoku_apps/genosLib/genColor.dart';

import '../genosLib/component/etc/JustHelper.dart';
import '../genosLib/component/etc/genRow.dart';
import '../genosLib/component/etc/genShadow.dart';
import '../genosLib/component/textfield/textField.dart';
import '../genosLib/genText.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {


  @override
  Widget build(BuildContext context) {
    return GenPage(
      appbar: Container(
        width: double.infinity,
        color: GenColor.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            CommonPadding(child: GenText("(Nama Event)", style: TextStyle(color: Colors.white, fontSize: 18),)),
            SizedBox(height: 10,),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network("https://seminardokter.id/data/sd37375-e8b4cd477e06a9ceba510d6b32086029.jpg"),
              ),
              SizedBox(height: GenDimen.spaceDetail,),
              CommonPadding(child: GenText("Nama Event", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
              SizedBox(height: 3,),
              CommonPadding(child: GenText(formatRupiahUseprefik("200000"), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: GenColor.primaryColor))),
              SizedBox(height: GenDimen.spaceDetail,),
              CommonPadding(child: GenText("International Symposium of Jurnal Antopologi Indonesia. What Are roles for anthropology in this time of multiple concept", style: TextStyle(color: Colors.black45),)),
              SizedBox(height: GenDimen.spaceDetail,),
              RowDetails(iconleft: Icons.calendar_month, titleText: "Tanggal",text: "22 Maret 2022, 10.00 - 15.00"),
              RowDetails(iconleft: Icons.pin_drop_outlined,titleText: "Lokasi" ,text: "Hotel Lor In, Solo Jawa Tengah", iconright: Icons.map_outlined,),
              RowDetails(iconleft: Icons.cases_outlined, titleText: "Spesialis",text: "Neuron"),
              RowDetails(iconleft: Icons.announcement_outlined, titleText: "Announcement", text: "Download Announcement", iconright: Icons.download,),
              SizedBox(height: GenDimen.bottomButton,),
            ],
          ),
        ),
      ),
      bottomsheet: Container(height: 90, padding: EdgeInsets.symmetric(vertical: GenDimen.spaceDetail,), child: CommonPadding(child: GenButton( text: "DAFTAR EVENT", ontap: (){
        Navigator.pushNamed(context, "masukanpendaftar");
      },))),
    );
  }
}
