part of 'stories_watcher_bloc.dart';

@freezed
class StoriesWatcherState with _$StoriesWatcherState {
  const factory StoriesWatcherState.initial() = _Initial;
  const factory StoriesWatcherState.loading() = _Loading;
  const factory StoriesWatcherState.loaded(List<Story> stories) = _Loaded;
  const factory StoriesWatcherState.failedToLoad(Failures failures) =
      _FailedToLoad;
}
