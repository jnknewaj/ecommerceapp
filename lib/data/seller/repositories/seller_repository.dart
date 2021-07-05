import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/seller/data_sources/seller_local_data_source.dart';
import 'package:ecommerce_app/data/seller/data_sources/seller_remote_data_source.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/core/network/network_info.dart';
import 'package:ecommerce_app/domain/seller/entities/seller.dart';
import 'package:ecommerce_app/domain/seller/repositories/i_seller_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISellerRepository)
class SellerRepository implements ISellerRepository {
  final ISellerRemoteDataSource _remoteDataSource;
  final ISellerLocalDataSource _localDataSource;
  final INetworkInfo _networkInfo;

  SellerRepository(
    this._remoteDataSource,
    this._localDataSource,
    this._networkInfo,
  );

  @override
  Future<Either<Failures, List<Seller>>> getTrendingSellers() async {
    final hasInternet = await _networkInfo.isConnected;

    if (hasInternet) {
      try {
        final sellerList = await _remoteDataSource.fetchTrendingSellers();
        // Not waiting here
        _localDataSource.cacheTrendingSellers(sellerList);
        return right(sellerList);
      } on ServerException {
        return left(const Failures.serverFailure());
      }
    } else {
      try {
        final sellers = _localDataSource.fetchCachedTrendingSellers();
        return right(sellers);
      } on CacheException {
        return left(const Failures.cacheFailure());
      }
    }
  }
}
