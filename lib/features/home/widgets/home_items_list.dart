import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator2/app/routing/main_navigation.dart';
import 'package:navigator2/app/routing/main_navigation_stack.dart';
import 'package:navigator2/features/home/bloc/home_bloc.dart';

class HomeItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;
    return state.when<Widget>(
      initial: () => SizedBox.shrink(),
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
      error: (localizedReasonKey) => Center(
        child: Text(localizedReasonKey),
      ),
      loaded: (items) => ListView(
        children: [
          for (final item in items)
            ListTile(
              title: Text(item.title),
              onTap: () => MainNavigationStack.of(context)?.push(
                MainNavigation.homeDetail(item.id),
              ),
            ),
        ],
      ),
    );
  }
}
