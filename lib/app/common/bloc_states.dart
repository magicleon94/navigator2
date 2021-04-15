abstract class LoadingState {}

abstract class ErrorState {
  final String localizedReasonKey;
  ErrorState(this.localizedReasonKey);
}

abstract class PageState {}
