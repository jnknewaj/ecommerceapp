import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
abstract class ProductDto implements _$ProductDto {
  const ProductDto._();

  const factory ProductDto({
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
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      slNo: product.slNo,
      productName: product.productName,
      shortDetails: product.shortDetails,
      productDescription: product.productDescription,
      availableStock: product.availableStock,
      orderQty: product.orderQty,
      salesQty: product.salesQty,
      orderAmount: product.orderAmount,
      salesAmount: product.salesAmount,
      discountPercent: product.discountPercent,
      discountAmount: product.discountAmount,
      unitPrice: product.unitPrice,
      productImage: product.productImage,
      sellerName: product.sellerName,
      sellerProfilePhoto: product.sellerProfilePhoto,
      sellerCoverPhoto: product.sellerCoverPhoto,
      ezShopName: product.ezShopName,
      defaultPushScore: product.defaultPushScore,
      myProductVarId: product.myProductVarId,
    );
  }

  Product toDomain() {
    return Product(
      slNo: slNo,
      productName: productName,
      shortDetails: shortDetails,
      productDescription: productDescription,
      availableStock: availableStock,
      orderQty: orderQty,
      salesQty: salesQty,
      orderAmount: orderAmount,
      salesAmount: salesAmount,
      discountPercent: discountPercent,
      discountAmount: discountAmount,
      unitPrice: unitPrice,
      productImage: productImage,
      sellerName: sellerName,
      sellerProfilePhoto: sellerProfilePhoto,
      sellerCoverPhoto: sellerCoverPhoto,
      ezShopName: ezShopName,
      defaultPushScore: defaultPushScore,
      myProductVarId: myProductVarId,
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}
