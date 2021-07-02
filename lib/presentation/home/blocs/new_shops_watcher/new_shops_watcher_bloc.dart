import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/shop/entities/shop.dart';
import 'package:ecommerce_app/domain/shop/repositories/i_shop_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'new_shops_watcher_event.dart';
part 'new_shops_watcher_state.dart';
part 'new_shops_watcher_bloc.freezed.dart';

@injectable
class NewShopsWatcherBloc
    extends Bloc<NewShopsWatcherEvent, NewShopsWatcherState> {
  final IShopRepository _repository;

  NewShopsWatcherBloc(this._repository)
      : super(const NewShopsWatcherState.initial());

  @override
  Stream<NewShopsWatcherState> mapEventToState(
    NewShopsWatcherEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield const NewShopsWatcherState.loading();
        final result = await _repository.getNewShops();
        yield result.fold(
          (l) => NewShopsWatcherState.failedToLoad(l),
          (r) => NewShopsWatcherState.loaded(r),
        );
      },
    );
  }
}
