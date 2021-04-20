import 'package:flutter/material.dart';
import 'package:navigator2/app/routing/main_navigation.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to home'),
          onPressed: () {
            MainNavigation.replace(context, [MainNavigation.home()]);
          },
        ),
      ),
    );
  }
}
