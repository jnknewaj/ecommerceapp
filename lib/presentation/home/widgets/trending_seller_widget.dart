import 'package:ecommerce_app/presentation/home/blocs/trending_sellers_watcher/trending_sellers_fetcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingSellerWidget extends StatelessWidget {
  const TrendingSellerWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingSellersFetcherBloc, TrendingSellersFetcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => CircularProgressIndicator(),
          loading: (_) => CircularProgressIndicator(),
          loaded: (s) {
            final sellers = s.sellers;
            return ListView.builder(
              itemCount: sellers.length,
              itemBuilder: (ctx, index) {
                final seller = sellers[index];
                return ListTile(
                  title: Text(seller.sellerName),
                  subtitle: Text(seller.country),
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
