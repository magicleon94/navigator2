import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator2/app/dependency_injection/dependency_factory.dart';
import 'package:navigator2/app/routing/main_navigation.dart';
import 'package:navigator2/features/goodbye/goodbye_screen.dart';
import 'package:navigator2/features/hello/hello_screen.dart';
import 'package:navigator2/features/home/bloc/home_bloc.dart';
import 'package:navigator2/features/home/home_screen.dart';
import 'package:navigator2/features/not_found/not_found_screen.dart';
import 'package:navigator2/features/splash/splash_screen.dart';

class MainRouterDelegate extends RouterDelegate<MainNavigationStack>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final MainNavigationStack stack;

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  MainRouterDelegate(this.stack) {
    stack.addListener(notifyListeners);
  }

  @override
  void dispose() {
    stack.removeListener(notifyListeners);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        for (final entry in stack.items.asMap().entries)
          entry.value.when(
            notFound: () => MaterialPage(
              key: ValueKey('notFound_${entry.key}'),
              child: NotFoundScreen(),
            ),
            splash: () => MaterialPage(
              key: ValueKey('splash_${entry.key}'),
              child: SplashScreen(),
            ),
            home: () => MaterialPage(
              key: ValueKey('home_${entry.key}'),
              child: BlocProvider<HomeBloc>(
                create: RepositoryProvider.of<BlocCreator<HomeBloc>>(context),
                child: HomeScreen(),
              ),
            ),
            hello: () => MaterialPage(
              key: ValueKey('hello_${entry.key}'),
              child: HelloScreen(),
            ),
            goodbye: () => MaterialPage(
              key: ValueKey('goodbye_${entry.key}'),
              child: GoodbyeScreen(),
            ),
          )
      ],
      key: navigatorKey,
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        stack.pop();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(MainNavigationStack configuration) async {
    stack.items = configuration.items;
  }
}
