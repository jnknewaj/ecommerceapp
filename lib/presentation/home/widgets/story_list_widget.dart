import 'package:ecommerce_app/presentation/home/blocs/stories_watcher/stories_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoryListWidget extends StatelessWidget {
  const StoryListWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoriesWatcherBloc, StoriesWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const CircularProgressIndicator(),
          loading: (_) => const CircularProgressIndicator(),
          loaded: (s) {
            final stories = s.stories;
            return ListView.builder(
              itemCount: stories.length,
              itemBuilder: (ctx, index) {
                final story = stories[index];
                return ListTile(
                  title: Text(story.story),
                  subtitle: Text(story.storyType),
                );
              },
            );
          },
          failedToLoad: (f) {
            return Text(
              f.failures.map(
                serverFailure: (_) => 'Server Failure',
                unexpectedFailure: (_) => 'Unknown Failure',
              ),
            );
          },
        );
      },
    );
  }
}