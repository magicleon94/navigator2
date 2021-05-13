import 'package:flutter/material.dart';
import 'package:navigator2/app/dependency_injection/dependency_factory_impl.dart';
import 'package:navigator2/app/dependency_injection/dependency_provider.dart';
import 'package:navigator2/app/routing/main_navigation.dart';
import 'package:navigator2/app/routing/main_navigation_stack.dart';
import 'package:navigator2/app/routing/main_router_delegate.dart';
import 'package:navigator2/app/routing/routes.dart';

import 'routing/main_router_information_parser.dart';

class MyApp extends StatelessWidget {
  final delegate =
      MainRouterDelegate(MainNavigationStack([MainNavigation.splash()]));
  final parser = MainRouterInformationParser();
  final p = PlatformRouteInformationProvider(
    initialRouteInformation: RouteInformation(location: '/${Routes.HOME}'),
  );
  @override
  Widget build(BuildContext context) {
    return DependencyProvider(
      dependencyFactory: DependencyFactoryImpl(),
      child: Builder(
        builder: (context) => MaterialApp.router(
          routerDelegate: delegate,
          routeInformationParser: parser,
          routeInformationProvider: p,
        ),
      ),
    );
  }
}
