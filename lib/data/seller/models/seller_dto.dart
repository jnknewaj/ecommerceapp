import 'package:ecommerce_app/domain/seller/entities/seller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller_dto.freezed.dart';
part 'seller_dto.g.dart';

@freezed
abstract class SellerResponseDto implements _$SellerResponseDto {
  const SellerResponseDto._();
  
  const factory SellerResponseDto({
    required List<SellerDto> sellers,
  }) = _SellerResponseDto;

  factory SellerResponseDto.fromDomain(SellerResponse sellerResponse) {
    return SellerResponseDto(
      sellers:
          sellerResponse.sellers.map((e) => SellerDto.fromDomain(e)).toList(),
    );
  }

  SellerResponse toDomain() {
    return SellerResponse(
      sellers: sellers.map((dto) => dto.toDomain()).toList(),
    );
  }

  factory SellerResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SellerResponseDtoFromJson(json);
}

@freezed
abstract class SellerDto implements _$SellerDto {
  const SellerDto._();

  const factory SellerDto({
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
  }) = _SellerDto;

  factory SellerDto.fromDomain(Seller seller) {
    return SellerDto(
      slNo: seller.slNo,
      sellerName: seller.sellerName,
      sellerProfilePhoto: seller.sellerProfilePhoto,
      sellerItemPhoto: seller.sellerItemPhoto,
      ezShopName: seller.ezShopName,
      defaultPushScore: seller.defaultPushScore,
      aboutCompany: seller.aboutCompany,
      allowCOD: seller.allowCOD,
      division: seller.division,
      subDivision: seller.subDivision,
      city: seller.city,
      //state: seller.state,
      zipcode: seller.zipcode,
      country: seller.country,
      currencyCode: seller.currencyCode,
      orderQty: seller.orderQty,
      orderAmount: seller.orderAmount,
      salesQty: seller.salesQty,
      salesAmount: seller.salesAmount,
      highestDiscountPercent: seller.highestDiscountPercent,
      lastAddToCart: seller.lastAddToCart,
      lastAddToCartThatSold: seller.lastAddToCartThatSold,
    );
  }

  Seller toDomain() {
    return Seller(
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
      //state: state,
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

  factory SellerDto.fromJson(Map<String, dynamic> json) =>
      _$SellerDtoFromJson(json);
}
