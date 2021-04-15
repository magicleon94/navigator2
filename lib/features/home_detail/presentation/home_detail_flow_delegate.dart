import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator2/app/routing/main_navigation_stack.dart';
import 'package:navigator2/app/routing/page_utils.dart';
import 'package:navigator2/features/home_detail/bloc/home_detail_bloc.dart';
import 'package:navigator2/features/home_detail/presentation/pages/rated_page.dart';
import 'package:navigator2/features/home_detail/presentation/pages/rating_page.dart';

//this isn't currently used
//flow_builder is used instead, since allows a correct iOS back gesture behavior and access to the root router
class HomeDetailFlowDelegate extends RouterDelegate<MainNavigationStack>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  final navigatorKey = GlobalKey<NavigatorState>();
  var pages = <Page>[];

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeDetailBloc>().state;

    pages = state.maybeWhen(
      initialized: () => PageUtils.buildPages(
        pages,
        MaterialPage(
          key: ValueKey('initialized'),
          child: RatingPage(),
        ),
      ),
      liked: (_) => PageUtils.buildPages(
        pages,
        MaterialPage(
          key: ValueKey('liked'),
          child: RatedPage(),
        ),
      ),
      orElse: () => [
        MaterialPage(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Loading...'),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        )
      ],
    );
    return Navigator(
      pages: pages,
      key: navigatorKey,
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        BlocProvider.of<HomeDetailBloc>(context).add(
          HomeDetailEvent.back(),
        );
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(MainNavigationStack configuration) async {}

  static Router getRouter(
          BuildContext context, HomeDetailFlowDelegate delegate) =>
      Router(
        backButtonDispatcher: Router.maybeOf(context)
            ?.backButtonDispatcher
            ?.createChildBackButtonDispatcher()
              ?..takePriority(),
        routerDelegate: delegate,
      );
}
