import 'package:ecommerce_app/data/product/data_sources/product_local_data_source.dart';
import 'package:ecommerce_app/data/seller/data_sources/seller_local_data_source.dart';
import 'package:ecommerce_app/data/shop/data_sources/shop_local_data_source.dart';
import 'package:ecommerce_app/data/story/data_sources/story_local_data_source.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'package:ecommerce_app/domain/seller/entities/seller.dart';
import 'package:ecommerce_app/domain/shop/entities/shop.dart';
import 'package:ecommerce_app/domain/story/entities/story.dart';
import 'package:hive_flutter/hive_flutter.dart';

void registerHiveAdapters() {
  Hive.registerAdapter(ProductAdapter());
  Hive.registerAdapter(SellerAdapter());
  Hive.registerAdapter(StoryAdapter());
  Hive.registerAdapter(ShopAdapter());
}

Future<void> openHiveBoxes() async {
  await Hive.openBox(boxTrendingSeller);
  await Hive.openBox(boxTrendingProducts);
  await Hive.openBox(boxNewArrivalProducts);
  await Hive.openBox(boxStories);
  await Hive.openBox(boxShops);
}
