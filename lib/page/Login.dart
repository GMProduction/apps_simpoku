import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:simpoku_apps/genosLib/component/button/genButton.dart';
import 'package:simpoku_apps/genosLib/component/etc/commonPadding.dart';
import 'package:simpoku_apps/genosLib/component/etc/genShadow.dart';
import 'package:simpoku_apps/genosLib/component/page/genPage.dart';
import 'package:simpoku_apps/genosLib/genColor.dart';

import '../genosLib/genText.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Variable
  String? _username;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return GenPage(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 400,
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
      bottomsheet: Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: GenShadow()
                .genShadow(color: Colors.black12, radius: 1),
            color: Colors.white
        ),
        child: CommonPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              GenText(
                "Login",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: GenColor.primaryColor),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    FeatherIcons.user,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      validator: (String? value) {
                        if (value == null) {
                          return 'Username is required';
                        }
                      },
                      onChanged: (val) {
                        _username = val;
                      },
                      style: TextStyle(height: 2),
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'username',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    FeatherIcons.lock,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      validator: (String? value) {
                        if (value == null) {
                          return 'Password is required';
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      onChanged: (val) {
                        _password = val;
                      },
                      style: TextStyle(height: 2),
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'password',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              GenButton(
                text: "LOGIN",
                ontap: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Center(child: GenText("or")),
              SizedBox(
                height: 15,
              ),
              GenButton(
                  text: "Sign in with Google",
                  ontap: () {
                    Navigator.pushNamed(context, "home");
                  },
                  imageleft: "assets/images/icon-google.png",
                  color: Colors.white,
                  textColor: Colors.black54),
            ],
          ),
        ),
      ),
    );
  }
}
