import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';

abstract class IProductRepository {
  Future<Either<Failures, List<Product>>> getTrendingProducts();
  Future<Either<Failures, List<Product>>> getNewArraivalProducts();
}
