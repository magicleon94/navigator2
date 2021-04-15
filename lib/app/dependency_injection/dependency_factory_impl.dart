import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_services/http_services.dart';
import 'package:navigator2/app/dependency_injection/dependency_factory.dart';
import 'package:navigator2/features/home/bloc/home_bloc.dart';
import 'package:navigator2/features/home/service/home_service.dart';

class DependencyFactoryImpl extends DependencyFactory {
  @override
  Dio createDio() {
    return Dio();
  }

  @override
  BlocCreator<HomeBloc> get createHomeBloc => (context) => HomeBloc(
        RepositoryProvider.of<ServiceCreator<HomeService>>(context)
            .call(context),
      );

  @override
  ServiceCreator<HomeService> get createHomeService =>
      (context) => HomeService(RepositoryProvider.of<Dio>(context));
}
