// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$_$_ProductDtoFromJson(Map<String, dynamic> json) {
  return _$_ProductDto(
    slNo: json['slNo'] as String,
    productName: json['productName'] as String,
    shortDetails: json['shortDetails'] as String,
    productDescription: json['productDescription'] as String,
    availableStock: json['availableStock'] as int,
    orderQty: json['orderQty'] as int,
    salesQty: json['salesQty'] as int,
    orderAmount: json['orderAmount'] as int,
    salesAmount: json['salesAmount'] as int,
    discountPercent: json['discountPercent'] as int,
    discountAmount: json['discountAmount'] as int,
    unitPrice: json['unitPrice'] as int,
    productImage: json['productImage'] as String,
    sellerName: json['sellerName'] as String,
    sellerProfilePhoto: json['sellerProfilePhoto'] as String,
    sellerCoverPhoto: json['sellerCoverPhoto'] as String,
    ezShopName: json['ezShopName'] as String,
    defaultPushScore: json['defaultPushScore'] as int,
    myProductVarId: json['myProductVarId'] as String,
  );
}

Map<String, dynamic> _$_$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'slNo': instance.slNo,
      'productName': instance.productName,
      'shortDetails': instance.shortDetails,
      'productDescription': instance.productDescription,
      'availableStock': instance.availableStock,
      'orderQty': instance.orderQty,
      'salesQty': instance.salesQty,
      'orderAmount': instance.orderAmount,
      'salesAmount': instance.salesAmount,
      'discountPercent': instance.discountPercent,
      'discountAmount': instance.discountAmount,
      'unitPrice': instance.unitPrice,
      'productImage': instance.productImage,
      'sellerName': instance.sellerName,
      'sellerProfilePhoto': instance.sellerProfilePhoto,
      'sellerCoverPhoto': instance.sellerCoverPhoto,
      'ezShopName': instance.ezShopName,
      'defaultPushScore': instance.defaultPushScore,
      'myProductVarId': instance.myProductVarId,
    };
