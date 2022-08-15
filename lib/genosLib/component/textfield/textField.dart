import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../genColor.dart';
import '../../genText.dart';

class TextfieldRound extends StatelessWidget {
  final label;
  final hintText;
  final helperText;
  final sufixText;
  final prefixText;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final bool obscureText;
  final Function()? onPressed;
  final Function()? btnOntap;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final keyboardType;
  final int? maxLines;
  final int? maxLength;
  final TextEditingController? controller;
  final validator;
  final onSaved;
  final enabled;
  final double height;
  final double width;
  final String? initVal;
  final double radius;
  final AutovalidateMode autovalidateMode;

  const TextfieldRound(
      {Key? key,
      this.label,
      this.sufixText,
      this.hintText,
      this.helperText,
      this.obscureText = false,
      this.sufixIcon,
      this.onPressed,
      this.inputFormatters,
      this.keyboardType = TextInputType.text,
      this.prefixIcon,
      this.prefixText,
      this.controller,
      this.validator,
      this.btnOntap,
      this.onSaved,
      this.initVal,
      this.maxLength,
      this.enabled = true,
      this.maxLines = 1,
      this.radius = 100,
      this.onChanged,
      this.height = 50,
      this.width = 300,
      this.autovalidateMode = AutovalidateMode.always})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          label != null
              ? GenText(
                  label,
                  style: TextStyle(fontSize: 16),
                )
              : Container(),
          SizedBox(
            height: label == null ? 0 : 5,
          ),
          Theme(
              data: ThemeData(
                colorScheme: ThemeData().colorScheme.copyWith(
                      secondary: Colors.red,
                    ),
              ),
              child: new Row(children: [
                Expanded(
                  child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      onChanged: onChanged,
                      onSaved: onSaved,
                      validator: validator,
                      maxLength: maxLength,
                      controller: controller,
                      enabled: enabled,
                      maxLines: maxLines,
                      obscureText: obscureText,
                      initialValue: initVal,
                      cursorColor: Colors.black54,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(radius)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          focusColor: Colors.black,
                          border: new OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(radius)),
                              borderSide: new BorderSide(color: Colors.white)),
                          hintText: hintText,
                          prefix: prefixText,
                          prefixIcon: IconTheme(data: IconThemeData(
                              color: GenColor.primaryColor,
                          ), child: prefixIcon!,
                          ),
                          iconColor: GenColor.primaryColor,
                          suffix: sufixText,
                          contentPadding: new EdgeInsets.symmetric(
                              vertical: 17.0, horizontal: 20.0),
                          suffixIcon: sufixIcon,
                          helperText: helperText),
                      keyboardType: keyboardType,
                      inputFormatters: inputFormatters
//                inputFormatters: <TextInputFormatter>[
//                  WhitelistingTextInputFormatter.digitsOnly
//                ], // Only numbers can be entered
                      ),
                ),
                btnOntap == null
                    ? SizedBox(
                        width: 0,
                      )
                    : Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          InkWell(
                              child: Badge(
                            badgeColor: GenColor.primaryColor,
                            badgeContent: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(20.w),
                          ))
                        ],
                      )
              ]))
        ],
      ),
    );
  }
}
