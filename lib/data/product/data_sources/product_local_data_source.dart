import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

const String boxTrendingProducts = 'boxTrendingProducts';
const String keyTrendingProducts = 'keyTrendingProducts';
const String boxNewArrivalProducts = 'boxNewArrivalProducts';
const String keyNewArrivalProducts = 'keyNewArrivalProducts';

abstract class IProductLocalDataSource {
  Future<void> cacheTrendingProducts(List<Product> products);

  /// Throws [CacheException] if there is no cached data
  List<Product> fetchCachedTrendingProducts();

  Future<void> cacheNewArrivalProducts(List<Product> products);

  /// Throws [CacheException] if there is no cached data
  List<Product> fetchCachedNewArrivalProducts();
}

@LazySingleton(as: IProductLocalDataSource)
class ProductLocalDataSource implements IProductLocalDataSource {
  @override
  Future<void> cacheTrendingProducts(List<Product> products) async {
    await Hive.box(boxTrendingProducts).put(keyTrendingProducts, products);
    return;
  }

  @override
  List<Product> fetchCachedTrendingProducts() {
    final List<dynamic>? productsData =
        Hive.box(boxTrendingProducts).get(keyTrendingProducts);
    final List<Product>? products =
        productsData?.map((s) => s as Product).toList();

    if (products == null) {
      throw CacheException();
    } else {
      return products;
    }
  }

  @override
  Future<void> cacheNewArrivalProducts(List<Product> products) async {
    await Hive.box(boxNewArrivalProducts).put(keyNewArrivalProducts, products);
    return;
  }

  @override
  List<Product> fetchCachedNewArrivalProducts() {
    final List<dynamic>? productsData =
        Hive.box(boxNewArrivalProducts).get(keyNewArrivalProducts);
    final List<Product>? products =
        productsData?.map((s) => s as Product).toList();

    if (products == null) {
      throw CacheException();
    } else {
      return products;
    }
  }
}
