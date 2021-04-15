import 'package:flutter/material.dart';
import 'package:navigator2/app/routing/main_navigation.dart';

class MainRouterInformationParser
    extends RouteInformationParser<MainNavigationStack> {
  @override
  Future<MainNavigationStack> parseRouteInformation(
      RouteInformation routeInformation) async {
    final location = routeInformation.location;
    var items = <MainNavigation>[];
    if (location == null) {
      items.add(MainNavigation.notFound());
    } else {
      final uri = Uri.parse(location);
      if (uri.pathSegments.isEmpty) {
        items = [MainNavigation.splash()];
      }
      for (var i = 0; i < uri.pathSegments.length; i++) {
        final segment = uri.pathSegments[i];
        switch (segment) {
          case 'splash':
            items = [MainNavigation.splash()];
            break;
          case 'home':
            items.add(MainNavigation.home());
            break;
          case 'hello':
            items.add(MainNavigation.hello());
            break;
          case 'goodbye':
            items.add(MainNavigation.goodbye());
            break;
          default:
            items = [MainNavigation.notFound()];
            break;
        }
      }
    }

    return MainNavigationStack(items);
  }

  @override
  RouteInformation restoreRouteInformation(MainNavigationStack configuration) {
    final location = configuration.items.fold<String>(
      '',
      (previousValue, element) {
        return previousValue +
            element.when(
              notFound: () => '',
              splash: () => '/splash',
              hello: () => '/hello',
              goodbye: () => '/goodbye',
              home: () => '/home',
            );
      },
    );
    return RouteInformation(location: location);
  }
}
