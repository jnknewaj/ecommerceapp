import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/story/entities/story.dart';
import 'package:ecommerce_app/domain/story/repositories/i_story_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stories_watcher_event.dart';
part 'stories_watcher_state.dart';
part 'stories_watcher_bloc.freezed.dart';

@injectable
class StoriesWatcherBloc
    extends Bloc<StoriesWatcherEvent, StoriesWatcherState> {
  final IStoryRepository _repository;

  StoriesWatcherBloc(this._repository)
      : super(const StoriesWatcherState.initial());

  @override
  Stream<StoriesWatcherState> mapEventToState(
    StoriesWatcherEvent event,
  ) async* {
    yield* event.map(
      firstThreeWatched: (e) async* {
        yield const StoriesWatcherState.loading();
        final result = await _repository.getFirstThreeStories();
        yield result.fold(
          (l) => StoriesWatcherState.failedToLoad(l),
          (r) => StoriesWatcherState.loaded(r),
        );
      },
      nextThreeWatched: (e) async* {
        yield const StoriesWatcherState.loading();
        final result = await _repository.getNextThreeStories();
        yield result.fold(
          (l) => StoriesWatcherState.failedToLoad(l),
          (r) => StoriesWatcherState.loaded(r),
        );
      },
      restStoriesWatched: (e) async* {
        yield const StoriesWatcherState.loading();
        final result = await _repository.getRestOfStories();
        yield result.fold(
          (l) => StoriesWatcherState.failedToLoad(l),
          (r) => StoriesWatcherState.loaded(r),
        );
      },
    );
  }
}
