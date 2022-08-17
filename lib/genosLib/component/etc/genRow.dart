import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../genText.dart';
import '../button/genButton.dart';
import 'commonPadding.dart';
import 'genDimen.dart';

class RowSpaceBetween extends StatelessWidget {
  final Widget? chilidLeft;
  final Widget? childRight;
  final double? paddingHorz;
  final double? paddingVert;
  RowSpaceBetween({this.chilidLeft, this.childRight, this.paddingHorz, this.paddingVert});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingHorz ?? 20, vertical: paddingVert ?? 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          chilidLeft ?? Container(),
          childRight ?? Container(),
        ],
      ),
    );
  }
}

class RowDetails extends StatelessWidget {

  final IconData? iconleft;
  final IconData? iconright;
  final String? text;
  final String? titleText;
  final Function()? ontap;
  final EdgeInsets? padding;
  final TextStyle? textStyle;

  RowDetails({this.iconleft, this.iconright, this.text, this.ontap, this.titleText, this.padding, this.textStyle});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonPadding(
      padding: padding ?? EdgeInsets.only(
          right: GenDimen.sidePadding,
          left: GenDimen.sidePadding),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: Colors.black12))
        ),
        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                iconleft == null ? Container() : Icon(iconleft ?? Icons.calendar_month),
                iconleft == null ? Container() : SizedBox(width: GenDimen.spaceDetail,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GenText(titleText ?? "", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    GenText(text ?? "-", style: textStyle ?? TextStyle(fontSize: 15, color: Colors.black54),),
                  ],
                )
              ],
            ), iconright == null ? Container() :  CircleButton(onTap: ontap ?? (){}, iconData: iconright,)
          ],
        ),
      ),
    );
  }}
