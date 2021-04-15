import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navigator2/app/routing/main_navigation.dart';
import 'package:navigator2/app/routing/main_router_delegate.dart';

class MainNavigationStack with ChangeNotifier {
  List<MainNavigation> _items;
  MainNavigationStack(List<MainNavigation> items) : _items = List.of(items);

  UnmodifiableListView<MainNavigation> get items =>
      UnmodifiableListView(_items);
  set items(List<MainNavigation> newItems) {
    _items = List.from(newItems);
    notifyListeners();
  }

  void push(MainNavigation item) {
    _items.add(item);
    notifyListeners();
  }

  MainNavigation? pop() {
    try {
      final poppedItem = _items.removeLast();
      notifyListeners();
      return poppedItem;
    } catch (e) {
      return null;
    }
  }

  static MainNavigationStack? of(BuildContext context) {
    final router = Router.maybeOf(context);
    if (router != null && router.routerDelegate is MainRouterDelegate) {
      final delegate = router.routerDelegate as MainRouterDelegate;
      return delegate.stack;
    }
    return null;
  }
}
