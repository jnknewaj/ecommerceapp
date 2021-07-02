import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'package:ecommerce_app/domain/product/repositories/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'trending_products_watcher_event.dart';
part 'trending_products_watcher_state.dart';
part 'trending_products_watcher_bloc.freezed.dart';

@injectable
class TrendingProductsWatcherBloc
    extends Bloc<TrendingProductsWatcherEvent, TrendingProductsWatcherState> {
  final IProductRepository _repository;

  TrendingProductsWatcherBloc(this._repository)
      : super(const TrendingProductsWatcherState.initial());

  @override
  Stream<TrendingProductsWatcherState> mapEventToState(
    TrendingProductsWatcherEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield const TrendingProductsWatcherState.loading();
        final result = await _repository.getTrendingProducts();
        yield result.fold(
          (l) => TrendingProductsWatcherState.failedToLoad(l),
          (r) => TrendingProductsWatcherState.loaded(r),
        );
      },
    );
  }
}
