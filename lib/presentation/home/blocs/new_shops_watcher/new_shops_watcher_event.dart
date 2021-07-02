part of 'new_shops_watcher_bloc.dart';

@freezed
class NewShopsWatcherEvent with _$NewShopsWatcherEvent {
  const factory NewShopsWatcherEvent.started() = _Started;
}