part of 'home_detail_bloc.dart';

@freezed
class HomeDetailState with _$HomeDetailState {
  const HomeDetailState._();
  const factory HomeDetailState.initial() = _Initial;
  @Implements(LoadingState)
  const factory HomeDetailState.initializing() = _Initializing;
  @Implements(LoadingState)
  const factory HomeDetailState.liking() = _Liking;
  @Implements(PageState)
  const factory HomeDetailState.initialized() = _Initialized;
  @Implements(PageState)
  const factory HomeDetailState.liked(int rating) = _Liked;
  @Implements(ErrorState)
  const factory HomeDetailState.likeError(String localizedReasonKey) =
      _LikeError;
  @Implements(ErrorState)
  const factory HomeDetailState.initError(String localizedReasonKey) =
      _InitError;
}
