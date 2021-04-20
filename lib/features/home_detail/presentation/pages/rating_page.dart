import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator2/app/routing/main_navigation_stack.dart';
import 'package:navigator2/features/home_detail/bloc/home_detail_bloc.dart';

class RatingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rate pls'),
        leading: BackButton(
          onPressed: MainNavigationStack.of(context)?.pop,
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: BlocBuilder<HomeDetailBloc, HomeDetailState>(
              builder: (context, state) => state.maybeWhen(
                likeError: (localizedReasonKey) => Text(localizedReasonKey),
                orElse: () => ElevatedButton(
                  child: Text('Rate'),
                  onPressed: () => BlocProvider.of<HomeDetailBloc>(context).add(
                    HomeDetailEvent.like(5),
                  ),
                ),
              ),
            ),
          ),
          BlocBuilder<HomeDetailBloc, HomeDetailState>(
            builder: (context, state) => state.maybeWhen(
              liking: () => _Loader(),
              orElse: () => SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}

class _Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Theme.of(context).accentColor.withOpacity(0.2),
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.red),
          ),
        ),
      ),
    );
  }
}
