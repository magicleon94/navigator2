import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_item.freezed.dart';

@freezed
class HomeItem with _$HomeItem {
  const factory HomeItem(int id, String title) = _HomeItem;

  @override
  String toString() => id.toString();
}
