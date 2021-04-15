import 'package:flutter/material.dart';
import 'package:navigator2/app/routing/main_navigation.dart';
import 'package:navigator2/app/routing/main_router_delegate.dart';

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
            final router = Router.maybeOf(context);
            if (router != null) {
              final delegate = router.routerDelegate as MainRouterDelegate;
              delegate.stack.items = [MainNavigation.home()];
            }
          },
        ),
      ),
    );
  }
}
