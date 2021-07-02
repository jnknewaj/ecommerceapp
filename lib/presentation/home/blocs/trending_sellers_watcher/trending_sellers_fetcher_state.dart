part of 'trending_sellers_fetcher_bloc.dart';

@freezed
class TrendingSellersFetcherState with _$TrendingSellersFetcherState {
  const factory TrendingSellersFetcherState.initial() = _Initial;
  const factory TrendingSellersFetcherState.loading() = _Loading;
  const factory TrendingSellersFetcherState.loaded(List<Seller> sellers) =
      _Loaded;
  const factory TrendingSellersFetcherState.failedToLoad(Failures failures) =
      _FailedToLoad;
}
