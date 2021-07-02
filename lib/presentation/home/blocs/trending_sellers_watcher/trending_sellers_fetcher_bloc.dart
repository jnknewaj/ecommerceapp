import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/seller/entities/seller.dart';
import 'package:ecommerce_app/domain/seller/repositories/i_seller_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'trending_sellers_fetcher_event.dart';
part 'trending_sellers_fetcher_state.dart';
part 'trending_sellers_fetcher_bloc.freezed.dart';

@injectable
class TrendingSellersFetcherBloc
    extends Bloc<TrendingSellersFetcherEvent, TrendingSellersFetcherState> {
  final ISellerRepository _repository;

  TrendingSellersFetcherBloc(this._repository)
      : super(const TrendingSellersFetcherState.initial());

  @override
  Stream<TrendingSellersFetcherState> mapEventToState(
    TrendingSellersFetcherEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield const TrendingSellersFetcherState.loading();
        final result = await _repository.getTrendingSellers();
        yield result.fold(
          (l) => TrendingSellersFetcherState.failedToLoad(l),
          (r) => TrendingSellersFetcherState.loaded(r),
        );
      },
    );
  }
}
