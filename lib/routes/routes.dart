import 'package:flutter/material.dart';
import 'package:showapp/pages/create_account.dart';

import '../pages/login_page.dart';


class Routes {
  static const String home = '/';
  static const String createAccount = '/createAccount';
  static const String explore = '/explore';
  static const String login = '/login';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case createAccount:
         return MaterialPageRoute(builder: (_) => CreateAccount());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      
      default:
       
        return MaterialPageRoute(builder: (_) => CreateAccount());
    }
  }
}



