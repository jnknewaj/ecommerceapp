import 'package:ecommerce_app/injection.dart';
import 'package:ecommerce_app/presentation/home/blocs/new_shops_watcher/new_shops_watcher_bloc.dart';
import 'package:ecommerce_app/presentation/home/blocs/trending_products_watcher/trending_products_watcher_bloc.dart';
import 'package:ecommerce_app/presentation/home/blocs/trending_sellers_watcher/trending_sellers_fetcher_bloc.dart';
import 'package:ecommerce_app/presentation/home/widgets/new_shops_widget.dart';
import 'package:ecommerce_app/presentation/home/widgets/trending_products_widget.dart';
import 'package:ecommerce_app/presentation/home/widgets/trending_seller_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TrendingSellersFetcherBloc>(
          create: (context) => getIt<TrendingSellersFetcherBloc>()
            ..add(const TrendingSellersFetcherEvent.started()),
        ),
        BlocProvider<TrendingProductsWatcherBloc>(
          create: (context) => getIt<TrendingProductsWatcherBloc>()
            ..add(const TrendingProductsWatcherEvent.started()),
        ),
        BlocProvider<NewShopsWatcherBloc>(
          create: (context) => getIt<NewShopsWatcherBloc>()
            ..add(const NewShopsWatcherEvent.started()),
        ),
      ],
      child: Scaffold(
        body: const NewShopsWidget(),
      ),
    );
  }
}
