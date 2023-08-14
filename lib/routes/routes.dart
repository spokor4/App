import 'package:flutter/material.dart';
import 'package:showapp/pages/create_account.dart';
import 'package:showapp/pages/explore_page.dart';
import 'package:showapp/pages/profile_page.dart';


import '../auth/auth_page.dart';
import '../pages/login_page.dart';
import '../pages/settings_page.dart';
import '../widgets/navbar.dart';
import '../pages/profile_page.dart';

 



class Routes {
  static const String home = '/';
  static const String createAccount = '/createAccount';
  static const String explore = '/explore';
  static const String login = '/login';
  static const String profile = '/profile';
  static const String settings1 = '/settings';
  static const String navBar = '/navBar';
  static const String auth = '/auth';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case createAccount:
         return MaterialPageRoute(builder: (_) => const CreateAccount());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case profile:
       return MaterialPageRoute(builder: (_) => const ProfilePage());
      case settings1: 
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case navBar: 
        return MaterialPageRoute(builder: (_) => NavBar());
      case auth:
        return MaterialPageRoute(builder: (_) => const AuthPage());
        case explore:
        return MaterialPageRoute(builder: (_) => ExplorePage());

      
      
      default:
       
        return MaterialPageRoute(builder: (_) => const CreateAccount());
    }
  }
}



