part of 'new_shops_watcher_bloc.dart';

@freezed
class NewShopsWatcherState with _$NewShopsWatcherState {
  const factory NewShopsWatcherState.initial() = _Initial;
  const factory NewShopsWatcherState.loading() = _Loading;
  const factory NewShopsWatcherState.loaded(List<Shop> shops) = _Loaded;
  const factory NewShopsWatcherState.failedToLoad(Failures failures) =
      _FailedToLoad;
}
