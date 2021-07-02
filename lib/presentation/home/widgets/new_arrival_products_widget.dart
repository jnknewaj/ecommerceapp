import 'package:ecommerce_app/presentation/home/blocs/new_arrival_products_watcher/new_arrival_products_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewArrivalProductsWidget extends StatelessWidget {
  const NewArrivalProductsWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewArrivalProductsWatcherBloc,
        NewArrivalProductsWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => CircularProgressIndicator(),
          loading: (_) => CircularProgressIndicator(),
          loaded: (s) {
            final products = s.products;
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
