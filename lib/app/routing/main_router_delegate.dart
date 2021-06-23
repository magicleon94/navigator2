import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator2/app/dependency_injection/dependency_factory.dart';
import 'package:navigator2/app/routing/main_navigation.dart';
import 'package:navigator2/app/routing/main_navigation_stack.dart';
import 'package:navigator2/app/routing/routes.dart';
import 'package:navigator2/features/goodbye/goodbye_screen.dart';
import 'package:navigator2/features/hello/hello_screen.dart';
import 'package:navigator2/features/home/bloc/home_bloc.dart';
import 'package:navigator2/features/home/home_screen.dart';
import 'package:navigator2/features/home_detail/bloc/home_detail_bloc.dart';
import 'package:navigator2/features/home_detail/presentation/home_detail_flow.dart';
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

  bool _onNotification(MainNavigationNotification notification) {
    notification.when(
      push: (page) => stack.push(page),
      pop: () => stack.pop(),
      replace: (newStack) => stack.items = newStack,
    );
    return true;
  }

  @override
  MainNavigationStack? get currentConfiguration => stack;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<MainNavigationNotification>(
      onNotification: _onNotification,
      child: Navigator(
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
              homeDetail: (int itemId) => MaterialPage(
                key: ValueKey('${Routes.HOME_DETAIL}${entry.key}'),
                child: BlocProvider(
                  create: RepositoryProvider.of<BlocCreator<HomeDetailBloc>>(
                      context),
                  child: HomeDetailFlow(itemId: itemId),
                ),
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
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(MainNavigationStack configuration) async {
    stack.items = configuration.items;
  }
}
