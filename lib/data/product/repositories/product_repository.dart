import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/product/data_sources/product_remote_data_source.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'package:ecommerce_app/domain/product/repositories/i_product_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final IProductRemoteDataSource _remoteDataSource;

  ProductRepository(this._remoteDataSource);

  @override
  Future<Either<Failures, List<Product>>> getTrendingProducts() async {
    try {
      final productsList = await _remoteDataSource.fetchTrendingProducts();
      return right(productsList);
    } on ServerException {
      return left(const Failures.serverFailure());
    }
  }

  @override
  Future<Either<Failures, List<Product>>> getNewArraivalProducts() async {
    try {
      final productsList = await _remoteDataSource.fetchNewArrivalProducts();
      return right(productsList);
    } on ServerException {
      return left(const Failures.serverFailure());
    }
  }
}
