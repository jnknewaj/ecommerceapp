import 'package:ecommerce_app/presentation/home/blocs/new_shops_watcher/new_shops_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewShopsWidget extends StatelessWidget {
  const NewShopsWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewShopsWatcherBloc, NewShopsWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => CircularProgressIndicator(),
          loading: (_) => CircularProgressIndicator(),
          loaded: (s) {
            final shops = s.shops;
            return ListView.builder(
              itemCount: shops.length,
              itemBuilder: (ctx, index) {
                final shop = shops[index];
                return ListTile(
                  title: Text(shop.ezShopName),
                  subtitle: Text(shop.country),
                );
              },
            );
          },
          failedToLoad: (f) {
            return Text(
              f.failures.map(
                serverFailure: (_) => 'Server Error',
                unexpectedFailure: (_) => 'Unexpected Error',
              ),
            );
          },
        );
      },
    );
  }
}
