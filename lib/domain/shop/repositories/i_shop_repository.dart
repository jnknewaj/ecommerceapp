import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/shop/entities/shop.dart';

abstract class IShopRepository {
  Future<Either<Failures, List<Shop>>> getNewShops();
}