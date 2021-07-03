import 'package:ecommerce_app/presentation/core/widgets/loading_widget.dart';
import 'package:ecommerce_app/presentation/home/blocs/new_shops_watcher/new_shops_watcher_bloc.dart';
import 'package:ecommerce_app/presentation/home/widgets/shop_item.dart';
import 'package:ecommerce_app/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewShopsWidget extends StatelessWidget {
  const NewShopsWidget();

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
              'New Shops',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: _height * 0.82,
            child: BlocBuilder<NewShopsWatcherBloc, NewShopsWatcherState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => const LoadingWidget(),
                  loading: (_) => const LoadingWidget(),
                  loaded: (s) {
                    final shops = s.shops;
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: shops.length,
                      itemBuilder: (ctx, index) {
                        final shop = shops[index];
                        return ShopItem(height: _height, shop: shop);
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
