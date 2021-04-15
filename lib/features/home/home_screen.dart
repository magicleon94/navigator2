import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator2/app/routing/main_navigation.dart';
import 'package:navigator2/app/routing/main_router_delegate.dart';
import 'package:navigator2/features/home/bloc/home_bloc.dart';
import 'package:navigator2/features/home/widgets/home_items_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeBloc>(context).add(HomeEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: HomeItemsList(),
            ),
            ElevatedButton(
              child: Text('Go to hello'),
              onPressed: () {
                final router = Router.maybeOf(context);
                if (router != null) {
                  final delegate = router.routerDelegate as MainRouterDelegate;
                  delegate.stack.push(MainNavigation.hello());
                }
              },
            ),
            ElevatedButton(
              child: Text('Go to goodbye'),
              onPressed: () {
                final router = Router.maybeOf(context);
                if (router != null) {
                  final delegate = router.routerDelegate as MainRouterDelegate;
                  delegate.stack.push(MainNavigation.goodbye());
                }
              },
            ),
            ElevatedButton(
              child: Text('Fetch'),
              onPressed: () {
                BlocProvider.of<HomeBloc>(context).add(HomeEvent.fetch());
              },
            )
          ],
        ),
      ),
    );
  }
}
