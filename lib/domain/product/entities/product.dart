import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  @HiveType(typeId: 0, adapterName: 'ProductAdapter')
  const factory Product({
    @HiveField(0) required String slNo,
    @HiveField(1) required String productName,
    @HiveField(2) required String shortDetails,
    @HiveField(3) required String productDescription,
    @HiveField(4) required int availableStock,
    @HiveField(5) required int orderQty,
    @HiveField(6) required int salesQty,
    @HiveField(7) required int orderAmount,
    @HiveField(8) required int salesAmount,
    @HiveField(9) required int discountPercent,
    @HiveField(10) required int discountAmount,
    @HiveField(11) required int unitPrice,
    @HiveField(12) required String productImage,
    @HiveField(13) required String sellerName,
    @HiveField(14) required String sellerProfilePhoto,
    @HiveField(15) required String sellerCoverPhoto,
    @HiveField(16) required String ezShopName,
    //@HiveField(17) required int defaultPushScore,
    @HiveField(18) required String myProductVarId,
  }) = _Product;
}
