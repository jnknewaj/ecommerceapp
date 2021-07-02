part of 'trending_sellers_fetcher_bloc.dart';

@freezed
class TrendingSellersFetcherEvent with _$TrendingSellersFetcherEvent {
  const factory TrendingSellersFetcherEvent.started() = _Started;
}