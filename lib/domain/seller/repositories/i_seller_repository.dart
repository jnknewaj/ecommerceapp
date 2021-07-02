import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/seller/entities/seller.dart';

abstract class ISellerRepository {
  Future<Either<Failures, List<Seller>>> getTrendingSellers();
}
