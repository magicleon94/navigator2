import 'package:flutter/material.dart';
import 'package:navigator2/app/routing/main_navigation.dart';
import 'package:navigator2/app/routing/main_navigation_stack.dart';
import 'package:navigator2/app/routing/routes.dart';

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
          case Routes.SPLASH:
            items = [MainNavigation.splash()];
            break;
          case Routes.HOME:
            items.add(MainNavigation.home());
            break;
          case Routes.HELLO:
            items.add(MainNavigation.hello());
            break;
          case Routes.GOODBYE:
            items.add(MainNavigation.goodbye());
            break;
          case Routes.HOME_DETAIL:
            final itemId = int.parse(uri.pathSegments[++i]);
            items.add(MainNavigation.homeDetail(itemId));
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
                splash: () => '/${Routes.SPLASH}',
                hello: () => '/${Routes.HELLO}',
                goodbye: () => '/${Routes.GOODBYE}',
                home: () => '/${Routes.HOME}',
                homeDetail: (id) => '/${Routes.HOME_DETAIL}/$id');
      },
    );
    return RouteInformation(location: location);
  }
}
