import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required String slNo,
    required String productName,
    required String shortDetails,
    required String productDescription,
    required int availableStock,
    required int orderQty,
    required int salesQty,
    required int orderAmount,
    required int salesAmount,
    required int discountPercent,
    required int discountAmount,
    required int unitPrice,
    required String productImage,
    required String sellerName,
    required String sellerProfilePhoto,
    required String sellerCoverPhoto,
    required String ezShopName,
    required int defaultPushScore,
    required String myProductVarId,
  }) = _Product;
}
