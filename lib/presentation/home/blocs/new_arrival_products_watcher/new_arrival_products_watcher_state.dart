part of 'new_arrival_products_watcher_bloc.dart';

@freezed
class NewArrivalProductsWatcherState with _$NewArrivalProductsWatcherState {
  const factory NewArrivalProductsWatcherState.initial() = _Initial;
  const factory NewArrivalProductsWatcherState.loading() = _Loading;
  const factory NewArrivalProductsWatcherState.loaded(List<Product> products) =
      _Loaded;
  const factory NewArrivalProductsWatcherState.failedToLoad(Failures failures) =
      _FailedToLoad;
}
