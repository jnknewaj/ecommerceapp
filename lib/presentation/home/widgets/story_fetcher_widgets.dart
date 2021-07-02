import 'package:ecommerce_app/injection.dart';
import 'package:ecommerce_app/presentation/home/blocs/stories_watcher/stories_watcher_bloc.dart';
import 'package:ecommerce_app/presentation/home/widgets/story_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstThreeStoriesWidget extends StatelessWidget {
  const FirstThreeStoriesWidget();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StoriesWatcherBloc>(
      create: (context) => getIt<StoriesWatcherBloc>()
        ..add(const StoriesWatcherEvent.firstThreeWatched()),
      child: const StoryListWidget(),
    );
  }
}

class NextThreeStoriesWidget extends StatelessWidget {
  const NextThreeStoriesWidget();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StoriesWatcherBloc>(
      create: (context) => getIt<StoriesWatcherBloc>()
        ..add(const StoriesWatcherEvent.nextThreeWatched()),
      child: const StoryListWidget(),
    );
  }
}

class RestOfTheStoriesWidget extends StatelessWidget {
  const RestOfTheStoriesWidget();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StoriesWatcherBloc>(
      create: (context) => getIt<StoriesWatcherBloc>()
        ..add(const StoriesWatcherEvent.restStoriesWatched()),
      child: const StoryListWidget(),
    );
  }
}
