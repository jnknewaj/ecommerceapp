part of 'stories_watcher_bloc.dart';

@freezed
class StoriesWatcherEvent with _$StoriesWatcherEvent {
  const factory StoriesWatcherEvent.firstThreeWatched() = _FirstThreeWatched;
  const factory StoriesWatcherEvent.nextThreeWatched() = _NextThreeWatched;
  const factory StoriesWatcherEvent.restStoriesWatched() = _RestStoriesWatched;
}
