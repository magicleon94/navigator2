import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_navigation.freezed.dart';

@freezed
abstract class MainNavigation with _$MainNavigation {
  const factory MainNavigation.notFound() = NotFound;
  const factory MainNavigation.splash() = Splash;
  const factory MainNavigation.home() = Home;
  const factory MainNavigation.hello() = Hello;
  const factory MainNavigation.goodbye() = Goodbye;
  const factory MainNavigation.homeDetail(int itemId) = HomeDetail;

  static void push(BuildContext context, MainNavigation page) =>
      MainNavigationNotification.push(page).dispatch(context);

  static void pop(BuildContext context) =>
      MainNavigationNotification.pop().dispatch(context);

  static void replace(BuildContext context, List<MainNavigation> stack) =>
      MainNavigationNotification.replace(stack).dispatch(context);
}

@freezed
abstract class MainNavigationNotification extends Notification
    with _$MainNavigationNotification {
  const MainNavigationNotification._();
  const factory MainNavigationNotification.push(MainNavigation page) =
      _MainNavigationPush;
  const factory MainNavigationNotification.pop() = _MainNavigationPop;
  const factory MainNavigationNotification.replace(List<MainNavigation> stack) =
      _MainNavigationReplace;
}
