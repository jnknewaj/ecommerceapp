import 'package:ecommerce_app/presentation/core/widgets/loading_widget.dart';
import 'package:ecommerce_app/presentation/home/blocs/stories_watcher/stories_watcher_bloc.dart';
import 'package:ecommerce_app/presentation/home/widgets/story_item.dart';
import 'package:ecommerce_app/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoryListWidget extends StatelessWidget {
  const StoryListWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoriesWatcherBloc, StoriesWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SliverToBoxAdapter(child: LoadingWidget()),
          loading: (_) => const SliverToBoxAdapter(child: LoadingWidget()),
          loaded: (s) {
            final stories = s.stories;
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (ctx, index) {
                  final story = stories[index];
                  return StoryItem(story: story);
                },
                childCount: stories.length,
              ),
            );
          },
          failedToLoad: (f) {
            return Center(
              child: Text(
                f.failures.map(
                  serverFailure: (f) => mapFailuresToMessage(f),
                  networkFailure: (f) => mapFailuresToMessage(f),
                  cacheFailure: (f) => mapFailuresToMessage(f),
                  unexpectedFailure: (f) => mapFailuresToMessage(f),
                ),
                style: const TextStyle(color: Colors.red),
              ),
            );
          },
        );
      },
    );
  }
}
