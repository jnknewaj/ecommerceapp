import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/seller/data_sources/seller_remote_data_source.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/seller/entities/seller.dart';
import 'package:ecommerce_app/domain/seller/repositories/i_seller_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISellerRepository)
class SellerRepository implements ISellerRepository {
  final ISellerRemoteDataSource _remoteDataSource;

  SellerRepository(this._remoteDataSource);

  @override
  Future<Either<Failures, List<Seller>>> getTrendingSellers() async {
    try {
      final sellerList = await _remoteDataSource.fetchTrendingSellers();
      return right(sellerList);
    } on ServerException {
      return left(const Failures.serverFailure());
    }
  }
}
