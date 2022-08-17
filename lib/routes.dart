import 'package:provider/provider.dart';
import 'package:simpoku_apps/page/Login.dart';
import 'package:simpoku_apps/page/base.dart';
import 'package:simpoku_apps/page/detailPage.dart';
import 'package:simpoku_apps/page/homePage.dart';
import 'package:simpoku_apps/page/homePageUnAuth.dart';
import 'package:simpoku_apps/page/masukanPendaftar.dart';
import 'package:simpoku_apps/page/splashScreen.dart';
import 'package:simpoku_apps/page/welcomePage.dart';

import 'genosLib/bloc/baseBloc.dart';


class GenProvider {
  static var providers = [
    ChangeNotifierProvider<BaseBloc>.value(value: BaseBloc()),

  ];

  static routes(context) {
    return {
//           '/': (context) {
//        return Base();
//      },

      '/': (context) {
        return SplashScreen();
      },


      'welcome': (context) {
        return WelcomePage();
      },

      'homeunauth': (context) {
        return HomePageUnAuth();
      },

      'base': (context) {
        return Base();
      },

      'detail': (context) {
        return DetailPage();
      },

      'masukanpendaftar': (context) {
        return MasukanPendaftar();
      },

      'login': (context) {
        return Login();
      },

    };
  }
}
