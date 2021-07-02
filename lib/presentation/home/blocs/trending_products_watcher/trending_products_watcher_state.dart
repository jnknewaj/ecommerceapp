part of 'trending_products_watcher_bloc.dart';

@freezed
class TrendingProductsWatcherState with _$TrendingProductsWatcherState {
  const factory TrendingProductsWatcherState.initial() = _Initial;
  const factory TrendingProductsWatcherState.loading() = _Loading;
  const factory TrendingProductsWatcherState.loaded(List<Product> data) =
      _Loaded;
  const factory TrendingProductsWatcherState.failedToLoad(Failures failures) =
      _failedToLoad;
}
