// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SellerDto _$_$_SellerDtoFromJson(Map<String, dynamic> json) {
  return _$_SellerDto(
    slNo: json['slNo'] as String,
    sellerName: json['sellerName'] as String,
    sellerProfilePhoto: json['sellerProfilePhoto'] as String,
    sellerItemPhoto: json['sellerItemPhoto'] as String,
    ezShopName: json['ezShopName'] as String,
    defaultPushScore: (json['defaultPushScore'] as num).toDouble(),
    aboutCompany: json['aboutCompany'] as String?,
    allowCOD: json['allowCOD'] as int,
    division: json['division'] as String?,
    subDivision: json['subDivision'] as String?,
    city: json['city'] as String?,
    zipcode: json['zipcode'] as String?,
    country: json['country'] as String,
    currencyCode: json['currencyCode'] as String,
    orderQty: json['orderQty'] as int,
    orderAmount: json['orderAmount'] as int,
    salesQty: json['salesQty'] as int,
    salesAmount: json['salesAmount'] as int,
    highestDiscountPercent: json['highestDiscountPercent'] as int,
    lastAddToCart: json['lastAddToCart'] as String,
    lastAddToCartThatSold: json['lastAddToCartThatSold'] as String,
  );
}

Map<String, dynamic> _$_$_SellerDtoToJson(_$_SellerDto instance) =>
    <String, dynamic>{
      'slNo': instance.slNo,
      'sellerName': instance.sellerName,
      'sellerProfilePhoto': instance.sellerProfilePhoto,
      'sellerItemPhoto': instance.sellerItemPhoto,
      'ezShopName': instance.ezShopName,
      'defaultPushScore': instance.defaultPushScore,
      'aboutCompany': instance.aboutCompany,
      'allowCOD': instance.allowCOD,
      'division': instance.division,
      'subDivision': instance.subDivision,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'country': instance.country,
      'currencyCode': instance.currencyCode,
      'orderQty': instance.orderQty,
      'orderAmount': instance.orderAmount,
      'salesQty': instance.salesQty,
      'salesAmount': instance.salesAmount,
      'highestDiscountPercent': instance.highestDiscountPercent,
      'lastAddToCart': instance.lastAddToCart,
      'lastAddToCartThatSold': instance.lastAddToCartThatSold,
    };
