import 'package:ecommerce_app/domain/shop/entities/shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_dto.freezed.dart';
part 'shop_dto.g.dart';

@freezed
abstract class ShopDto implements _$ShopDto {
  const ShopDto._();

  const factory ShopDto({
    required String slNo,
    required String sellerName,
    required String sellerProfilePhoto,
    required String sellerItemPhoto,
    required String ezShopName,
    required double defaultPushScore,
    required String? aboutCompany,
    required int allowCOD,
    required String? division,
    required String? subDivision,
    required String? city,
    required String? state,
    required String? zipcode,
    required String country,
    required String currencyCode,
    required int orderQty,
    required int orderAmount,
    required int salesQty,
    required int salesAmount,
    required int highestDiscountPercent,
    required String lastAddToCart,
    required String lastAddToCartThatSold,
  }) = _ShopDto;

  factory ShopDto.fromDomain(Shop shop) {
    return ShopDto(
      slNo: shop.slNo,
      sellerName: shop.sellerName,
      sellerProfilePhoto: shop.sellerProfilePhoto,
      sellerItemPhoto: shop.sellerItemPhoto,
      ezShopName: shop.ezShopName,
      defaultPushScore: shop.defaultPushScore,
      aboutCompany: shop.aboutCompany,
      allowCOD: shop.allowCOD,
      division: shop.division,
      subDivision: shop.subDivision,
      city: shop.city,
      state: shop.state,
      zipcode: shop.zipcode,
      country: shop.country,
      currencyCode: shop.currencyCode,
      orderQty: shop.orderQty,
      orderAmount: shop.orderAmount,
      salesQty: shop.salesQty,
      salesAmount: shop.salesAmount,
      highestDiscountPercent: shop.highestDiscountPercent,
      lastAddToCart: shop.lastAddToCart,
      lastAddToCartThatSold: shop.lastAddToCartThatSold,
    );
  }

  Shop toDomain() {
    return Shop(
      slNo: slNo,
      sellerName: sellerName,
      sellerProfilePhoto: sellerProfilePhoto,
      sellerItemPhoto: sellerItemPhoto,
      ezShopName: ezShopName,
      defaultPushScore: defaultPushScore,
      aboutCompany: aboutCompany,
      allowCOD: allowCOD,
      division: division,
      subDivision: subDivision,
      city: city,
      state: state,
      zipcode: zipcode,
      country: country,
      currencyCode: currencyCode,
      orderQty: orderQty,
      orderAmount: orderAmount,
      salesQty: salesQty,
      salesAmount: salesAmount,
      highestDiscountPercent: highestDiscountPercent,
      lastAddToCart: lastAddToCart,
      lastAddToCartThatSold: lastAddToCartThatSold,
    );
  }

  factory ShopDto.fromJson(Map<String, dynamic> json) =>
      _$ShopDtoFromJson(json);
}
