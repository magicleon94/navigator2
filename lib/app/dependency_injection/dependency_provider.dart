import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator2/app/dependency_injection/dependency_factory.dart';

class DependencyProvider extends StatelessWidget {
  final Widget child;
  final DependencyFactory dependencyFactory;

  const DependencyProvider(
      {Key? key, required this.child, required this.dependencyFactory})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: dependencyFactory.createDio()),
        RepositoryProvider.value(value: dependencyFactory.createHomeService),
        RepositoryProvider.value(value: dependencyFactory.createHomeBloc),
      ],
      child: child,
    );
  }
}
