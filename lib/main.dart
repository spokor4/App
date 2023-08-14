import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:showapp/pages/create_account.dart';
import 'package:showapp/pages/login_page.dart';

import 'package:showapp/routes/routes.dart';
import 'package:showapp/utils/theme.dart';

import 'Auth/auth_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'ShowApp';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
       theme: MyTheme.lightTheme,
      onGenerateRoute: Routes.generateRoute,
      home: AuthPage(),
      
      
    );
  }
}

