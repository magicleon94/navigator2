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
}
