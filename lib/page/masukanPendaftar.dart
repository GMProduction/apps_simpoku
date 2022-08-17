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

class MasukanPendaftar extends StatefulWidget {
  const MasukanPendaftar({Key? key}) : super(key: key);

  @override
  State<MasukanPendaftar> createState() => _MasukanPendaftarState();
}

class _MasukanPendaftarState extends State<MasukanPendaftar> {


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
            CommonPadding(child: GenText("Masukan Pendaftar", style: TextStyle(color: Colors.white, fontSize: 18),)),
            SizedBox(height: 10,),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: GenDimen.afterTitle,),
                CommonPadding(
                  child: GenCard(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    child: 
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),child: Image.network("https://seminardokter.id/data/sd37375-e8b4cd477e06a9ceba510d6b32086029.jpg", width: double.infinity, height: 100, fit: BoxFit.cover)),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                RowDetails(titleText: "Nama Event", text: "ISJAI", padding: EdgeInsets.only(left: 10),),
                                // RowDetails(titleText: "Tanggal Event", text: "11 Maret 2022", padding: EdgeInsets.only(left: 10),),
                                // RowDetails(titleText: "Lokasi", text: "Hotel Lor In, Solo Jawa Tengah", padding: EdgeInsets.only(left: 10),),
                                RowDetails(titleText: "Harga", text: formatRupiahUseprefik("200000"), textStyle: TextStyle(fontSize: 20, color: GenColor.primaryColor, fontWeight: FontWeight.bold) ,padding: EdgeInsets.only(left: 10),),

                                // Expanded(child: Align(alignment: Alignment.bottomRight, child: GenText("Harga"),),),
                                SizedBox(height: 10,)
                              ],
                          ),
                        )
                  ),
              SizedBox(height: 20,),
              CommonPadding(child: GenText("Data Pendaftar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
              // SizedBox(height: GenDimen.afterTitle,),
              CommonPadding(
                child: TextFormField(
                  validator: (String? value) {
                    if (value == null) {
                      return 'Username is required';
                    }
                  },
                  onChanged: (val) {
                    // _username = val;
                  },
                  style: TextStyle(height: 2),
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Nama',
                  ),
                ),

              ),
              CommonPadding(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        validator: (String? value) {
                          if (value == null) {
                            return 'Username is required';
                          }
                        },
                        onChanged: (val) {
                          // _username = val;
                        },
                        style: TextStyle(height: 2),
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'No. Hp',
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: GenColor.primaryColor),
                      width: 40,
                      height: 40,
                    )
                  ],
                ),

              ),
          ]
                )
          ),
        ),
      bottomsheet: Container(height: 90, padding: EdgeInsets.symmetric(vertical: GenDimen.spaceDetail,), child: CommonPadding(child: GenButton( text: "BAYAR SEKARANG", ontap: (){},))),
    );
  }
}
