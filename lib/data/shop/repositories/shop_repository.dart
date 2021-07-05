import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/shop/data_sources/shop_local_data_source.dart';
import 'package:ecommerce_app/data/shop/data_sources/shop_remote_data_source.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/core/network/network_info.dart';
import 'package:ecommerce_app/domain/shop/entities/shop.dart';
import 'package:ecommerce_app/domain/shop/repositories/i_shop_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IShopRepository)
class ShopRepository implements IShopRepository {
  final IShopRemoteDataSource _remoteDataSource;
  final IShopLocalDataSource _localDataSource;
  final INetworkInfo _networkInfo;

  ShopRepository(
    this._remoteDataSource,
    this._localDataSource,
    this._networkInfo,
  );

  @override
  Future<Either<Failures, List<Shop>>> getNewShops() async {
    final hasInternet = await _networkInfo.isConnected;

    if (hasInternet) {
      try {
        final shopsList = await _remoteDataSource.fetchNewShops();
        _localDataSource.cacheNewShops(shopsList);
        return right(shopsList);
      } on ServerException {
        return left(const Failures.serverFailure());
      }
    } else {
      try {
        final shops = _localDataSource.fetchCachedNewShops();
        return right(shops);
      } on CacheException {
        return left(const Failures.cacheFailure());
      }
    }
  }
}
