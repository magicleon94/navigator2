import 'package:flutter/material.dart';
import 'package:navigator2/app/routing/main_navigation.dart';

class RatedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rated!'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Quit'),
          onPressed: () => MainNavigation.pop(context),
        ),
      ),
    );
  }
}
