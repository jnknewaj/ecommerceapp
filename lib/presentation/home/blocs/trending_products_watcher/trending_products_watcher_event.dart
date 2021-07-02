part of 'trending_products_watcher_bloc.dart';

@freezed
class TrendingProductsWatcherEvent with _$TrendingProductsWatcherEvent {
  const factory TrendingProductsWatcherEvent.started() = _Started;
}