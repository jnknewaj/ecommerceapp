import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/product/data_sources/product_local_data_source.dart';
import 'package:ecommerce_app/data/product/data_sources/product_remote_data_source.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/core/network/network_info.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'package:ecommerce_app/domain/product/repositories/i_product_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final IProductRemoteDataSource _remoteDataSource;
  final IProductLocalDataSource _localDataSource;
  final INetworkInfo _networkInfo;

  ProductRepository(
    this._remoteDataSource,
    this._localDataSource,
    this._networkInfo,
  );

  @override
  Future<Either<Failures, List<Product>>> getTrendingProducts() async {
    final hasInternet = await _networkInfo.isConnected;

    if (hasInternet) {
      try {
        final productsList = await _remoteDataSource.fetchTrendingProducts();
        _localDataSource.cacheTrendingProducts(productsList);
        return right(productsList);
      } on ServerException {
        return left(const Failures.serverFailure());
      } on SocketException {
        return left(const Failures.networkFailure());
      }
    } else {
      try {
        final productsList = _localDataSource.fetchCachedTrendingProducts();
        return right(productsList);
      } on CacheException {
        return left(const Failures.cacheFailure());
      }
    }
  }

  @override
  Future<Either<Failures, List<Product>>> getNewArraivalProducts() async {
    final hasInternet = await _networkInfo.isConnected;

    if (hasInternet) {
      try {
        final productsList = await _remoteDataSource.fetchNewArrivalProducts();
        _localDataSource.cacheNewArrivalProducts(productsList);
        return right(productsList);
      } on ServerException {
        return left(const Failures.serverFailure());
      } on SocketException {
        return left(const Failures.networkFailure());
      }
    } else {
      try {
        final productsList = _localDataSource.fetchCachedNewArrivalProducts();
        return right(productsList);
      } on CacheException {
        return left(const Failures.cacheFailure());
      }
    }
  }
}
