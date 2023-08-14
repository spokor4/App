// Depends if user is logged in or not, user will be redirected to login or profile page

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../pages/login_page.dart';
import '../widgets/navbar.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (ctx, userSnapshot) {
        if (userSnapshot.hasData) {
          // logged in
          return NavBar();
        } else {
          // not logged in
          return LoginPage();
        }
      },
    );
  }
}
