import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_navigation.freezed.dart';

@freezed
abstract class MainNavigation with _$MainNavigation {
  const factory MainNavigation.notFound() = NotFound;
  const factory MainNavigation.splash() = Splash;
  const factory MainNavigation.home() = Home;
  const factory MainNavigation.hello() = Hello;
  const factory MainNavigation.goodbye() = Goodbye;
}

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
}
