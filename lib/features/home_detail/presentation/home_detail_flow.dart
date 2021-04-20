import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator2/app/common/bloc_states.dart';
import 'package:navigator2/app/routing/main_navigation.dart';
import 'package:navigator2/app/routing/page_utils.dart';
import 'package:navigator2/features/home_detail/bloc/home_detail_bloc.dart';
import 'package:navigator2/features/home_detail/presentation/pages/rated_page.dart';
import 'package:navigator2/features/home_detail/presentation/pages/rating_page.dart';

class HomeDetailFlow extends StatefulWidget {
  final int itemId;

  const HomeDetailFlow({Key? key, required this.itemId}) : super(key: key);
  @override
  _HomeDetailFlowState createState() => _HomeDetailFlowState();
}

class _HomeDetailFlowState extends State<HomeDetailFlow> {
  late final flowController = FlowController(
    BlocProvider.of<HomeDetailBloc>(context).state,
  )..addListener(_flowListener);
  HomeDetailState? previousState;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeDetailBloc>(context).add(
      HomeDetailEvent.initialize(widget.itemId),
    );
  }

  @override
  void dispose() {
    flowController.dispose();
    super.dispose();
  }

  void _flowListener() {
    if (previousState != null && previousState != flowController.state) {
      BlocProvider.of<HomeDetailBloc>(context).add(
        HomeDetailEvent.back(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeDetailBloc, HomeDetailState>(
      listener: (context, state) {
        if (state is PageState) {
          previousState = state;
          flowController.update((_) => state);
        } else if (state is ErrorState) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text((state as ErrorState).localizedReasonKey),
            ),
          );
        }

        state.maybeWhen(
          liked: (stars) {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Congrats!'),
                content: Text('You rated $stars stars'),
              ),
            );
          },
          orElse: () {},
        );
      },
      child: FlowBuilder<HomeDetailState>(
        controller: flowController,
        onGeneratePages: (state, pages) => state.maybeWhen(
          initialized: () => PageUtils.buildPages(
            [],
            MaterialPage(
              key: ValueKey('initialized'),
              child: RatingPage(),
            ),
          ),
          liked: (_) => PageUtils.buildPages(
            pages,
            MaterialPage(
              key: ValueKey('liked'),
              child: RatedPage(),
            ),
          ),
          orElse: () => [
            MaterialPage(
              child: Scaffold(
                appBar: AppBar(
                  title: Text('Loading...'),
                ),
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            )
          ],
        ),
        onComplete: (_) => MainNavigation.pop(context),
      ),
    );
  }
}
