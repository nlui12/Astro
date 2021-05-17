import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:astro_nicklui/screen/HomePage.dart';
import 'package:astro_nicklui/screen/authenticate/SignInPage.dart';

class AppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    // return either the Home or Authenticate widget
    if (user != null) {
      return HomePage();
    } else {
      return AuthWrapper();
    }
  }
}

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignInPage();
  }
}
