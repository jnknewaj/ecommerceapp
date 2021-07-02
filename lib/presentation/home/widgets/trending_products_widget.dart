import 'package:ecommerce_app/presentation/home/blocs/trending_products_watcher/trending_products_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingProductsWidget extends StatelessWidget {
  const TrendingProductsWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingProductsWatcherBloc,
        TrendingProductsWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => CircularProgressIndicator(),
          loading: (_) => CircularProgressIndicator(),
          loaded: (s) {
            final products = s.data;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (ctx, index) {
                final product = products[index];
                return ListTile(
                  title: Text(product.sellerName),
                  subtitle: Text(product.unitPrice.toString()),
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
