part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  @Implements(LoadingState)
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded(List<HomeItem> items) = _Loaded;
}
