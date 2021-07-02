import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller.freezed.dart';

@freezed
abstract class SellerResponse with _$SellerResponse{
  const factory SellerResponse({
    required List<Seller> sellers,
  }) = _SellerResponse;
}

@freezed
abstract class Seller with _$Seller{
  const factory Seller({
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
    //required String? state,
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
  }) = _Seller;
}