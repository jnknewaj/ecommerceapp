import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/seller/data_sources/seller_local_data_source.dart';
import 'package:ecommerce_app/data/seller/data_sources/seller_remote_data_source.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/seller/entities/seller.dart';
import 'package:ecommerce_app/domain/seller/repositories/i_seller_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@LazySingleton(as: ISellerRepository)
class SellerRepository implements ISellerRepository {
  final ISellerRemoteDataSource _remoteDataSource;
  final ISellerLocalDataSource _localDataSource;

  SellerRepository(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failures, List<Seller>>> getTrendingSellers() async {
    final hasInternet = await InternetConnectionChecker().hasConnection;

    if (hasInternet) {
      try {
        final sellerList = await _remoteDataSource.fetchTrendingSellers();
        return right(sellerList);
      } on ServerException {
        return left(const Failures.serverFailure());
      }
    } else {
      try {
        final sellers = await _localDataSource.fetchCachedTrendingSellers();
        return right(sellers);
      } on CacheException {
        return left(const Failures.unexpectedFailure('No Cache Data'));
      }
    }
  }
}
