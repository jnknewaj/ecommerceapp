import 'package:ecommerce_app/presentation/core/widgets/loading_widget.dart';
import 'package:ecommerce_app/presentation/home/blocs/trending_products_watcher/trending_products_watcher_bloc.dart';
import 'package:ecommerce_app/presentation/home/widgets/product_item.dart';
import 'package:ecommerce_app/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingProductsWidget extends StatelessWidget {
  const TrendingProductsWidget();

  @override
  Widget build(BuildContext context) {
    final _height = Helper.screenHeightPortion(context, time: 0.25);

    return Container(
      margin: const EdgeInsets.only(top: 4.0),
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 5.0,
        left: 8.0,
      ),
      height: _height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Text(
              'Trending Products',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: _height * 0.82,
            child: BlocBuilder<TrendingProductsWatcherBloc,
                TrendingProductsWatcherState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => const LoadingWidget(),
                  loading: (_) => const LoadingWidget(),
                  loaded: (s) {
                    final products = s.data;
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (ctx, index) {
                        final product = products[index];
                        return ProductItem(
                          height: _height,
                          product: product,
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
            ),
          ),
        ],
      ),
    );
  }
}
