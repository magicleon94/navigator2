part of 'home_detail_bloc.dart';

@freezed
class HomeDetailEvent with _$HomeDetailEvent {
  const factory HomeDetailEvent.initialize(int itemId) = _Initialize;
  const factory HomeDetailEvent.like([int? rating]) = _Like;
  const factory HomeDetailEvent.back() = _Back;
}
