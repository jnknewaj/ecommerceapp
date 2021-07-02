import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop.freezed.dart';

@freezed
abstract class Shop with _$Shop {
  const factory Shop({
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
  }) = _Shop;
}
