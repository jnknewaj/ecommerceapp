import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'package:ecommerce_app/domain/product/repositories/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'new_arrival_products_watcher_event.dart';
part 'new_arrival_products_watcher_state.dart';
part 'new_arrival_products_watcher_bloc.freezed.dart';

@injectable
class NewArrivalProductsWatcherBloc extends Bloc<NewArrivalProductsWatcherEvent,
    NewArrivalProductsWatcherState> {
  final IProductRepository _repository;

  NewArrivalProductsWatcherBloc(this._repository)
      : super(const NewArrivalProductsWatcherState.initial());

  @override
  Stream<NewArrivalProductsWatcherState> mapEventToState(
    NewArrivalProductsWatcherEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield const NewArrivalProductsWatcherState.loading();
        final result = await _repository.getNewArraivalProducts();
        yield result.fold(
          (l) => NewArrivalProductsWatcherState.failedToLoad(l),
          (r) => NewArrivalProductsWatcherState.loaded(r),
        );
      },
    );
  }
}
