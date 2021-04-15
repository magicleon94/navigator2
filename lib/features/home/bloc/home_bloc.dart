import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navigator2/features/home/model/home_item.dart';
import 'package:navigator2/features/home/service/home_service.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService service;
  HomeBloc(this.service) : super(_Initial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.when(fetch: _fetch);
  }

  Stream<HomeState> _fetch() async* {
    yield HomeState.loading();
    await Future.delayed(Duration(seconds: 1));
    final items = [
      HomeItem(0, 'Pippo'),
      HomeItem(1, 'Paperino'),
      HomeItem(2, 'Pluto'),
    ];
    yield HomeState.loaded(items);
  }
}
