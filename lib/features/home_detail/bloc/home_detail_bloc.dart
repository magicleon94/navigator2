import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navigator2/app/common/bloc_states.dart';
import 'package:navigator2/features/home_detail/services/home_detail_service.dart';

part 'home_detail_bloc.freezed.dart';
part 'home_detail_event.dart';
part 'home_detail_state.dart';

class HomeDetailBloc extends Bloc<HomeDetailEvent, HomeDetailState> {
  final HomeDetailService service;
  HomeDetailBloc(this.service) : super(_Initial());
  int? _currentId;
  int? _currentRating;

  @override
  Stream<HomeDetailState> mapEventToState(
    HomeDetailEvent event,
  ) async* {
    yield* event.when(
      initialize: _initialize,
      like: _like,
      back: _back,
    );
  }

  Stream<HomeDetailState> _initialize(int id) async* {
    yield HomeDetailState.initializing();
    _currentId = id;
    await Future.delayed(Duration(milliseconds: 1200));
    yield HomeDetailState.initialized();
  }

  Stream<HomeDetailState> _like(int? rating) async* {
    yield HomeDetailState.liking();
    _currentRating = rating;
    await Future.delayed(Duration(milliseconds: 500));
    yield HomeDetailState.liked(_currentRating ?? 0);
  }

  Stream<HomeDetailState> _back() async* {
    yield state.maybeWhen(
      initialized: () {
        _currentId = null;
        return HomeDetailState.initial();
      },
      liked: (_) {
        _currentRating = null;
        return HomeDetailState.initialized();
      },
      orElse: () => state,
    );
  }
}
