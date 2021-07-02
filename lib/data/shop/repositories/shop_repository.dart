import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/shop/data_sources/shop_remote_data_source.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/shop/entities/shop.dart';
import 'package:ecommerce_app/domain/shop/repositories/i_shop_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IShopRepository)
class ShopRepository implements IShopRepository {
  final IShopRemoteDataSource _remoteDataSource;

  ShopRepository(this._remoteDataSource);

  @override
  Future<Either<Failures, List<Shop>>> getNewShops() async {
    try {
      final productsList = await _remoteDataSource.fetchNewShops();
      return right(productsList);
    } on ServerException {
      return left(const Failures.serverFailure());
    }
  }
}
