import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_services/http_services.dart';
import 'package:navigator2/features/home/bloc/home_bloc.dart';
import 'package:navigator2/features/home/service/home_service.dart';
import 'package:navigator2/features/home_detail/bloc/home_detail_bloc.dart';
import 'package:navigator2/features/home_detail/services/home_detail_service.dart';

typedef BlocCreator<T extends Bloc> = T Function(BuildContext context);
typedef ServiceCreator<T extends HttpServiceBase> = T Function(
    BuildContext context);

abstract class DependencyFactory {
  Dio createDio();

  BlocCreator<HomeBloc> get createHomeBloc;
  ServiceCreator<HomeService> get createHomeService;

  BlocCreator<HomeDetailBloc> get createHomeDetailBloc;
  ServiceCreator<HomeDetailService> get createHomeDetailService;
}
