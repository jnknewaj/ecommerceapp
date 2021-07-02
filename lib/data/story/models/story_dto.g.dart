// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoryDto _$_$_StoryDtoFromJson(Map<String, dynamic> json) {
  return _$_StoryDto(
    storyTime: json['storyTime'] as String,
    story: json['story'] as String,
    storyType: json['storyType'] as String,
    storyImage: json['storyImage'] as String,
    storyAdditionalImages: json['storyAdditionalImages'] as String?,
    promoImage: json['promoImage'] as String,
    orderQty: json['orderQty'] as int,
    lastAddToCart: json['lastAddToCart'] as String,
    availableStock: json['availableStock'] as int,
    myId: json['myId'] as String,
    ezShopName: json['ezShopName'] as String,
    companyName: json['companyName'] as String?,
    companyLogo: json['companyLogo'] as String?,
    companyEmail: json['companyEmail'] as String?,
    currencyCode: json['currencyCode'] as String,
    unitPrice: json['unitPrice'] as int,
    discountAmount: json['discountAmount'] as int,
    discountPercent: json['discountPercent'] as int,
    iMyID: json['iMyID'] as String,
    shopName: json['shopName'] as String,
    shopLogo: json['shopLogo'] as String,
    shopLink: json['shopLink'] as String,
    friendlyTimeDiff: json['friendlyTimeDiff'] as String,
    slNo: json['slNo'] as String,
  );
}

Map<String, dynamic> _$_$_StoryDtoToJson(_$_StoryDto instance) =>
    <String, dynamic>{
      'storyTime': instance.storyTime,
      'story': instance.story,
      'storyType': instance.storyType,
      'storyImage': instance.storyImage,
      'storyAdditionalImages': instance.storyAdditionalImages,
      'promoImage': instance.promoImage,
      'orderQty': instance.orderQty,
      'lastAddToCart': instance.lastAddToCart,
      'availableStock': instance.availableStock,
      'myId': instance.myId,
      'ezShopName': instance.ezShopName,
      'companyName': instance.companyName,
      'companyLogo': instance.companyLogo,
      'companyEmail': instance.companyEmail,
      'currencyCode': instance.currencyCode,
      'unitPrice': instance.unitPrice,
      'discountAmount': instance.discountAmount,
      'discountPercent': instance.discountPercent,
      'iMyID': instance.iMyID,
      'shopName': instance.shopName,
      'shopLogo': instance.shopLogo,
      'shopLink': instance.shopLink,
      'friendlyTimeDiff': instance.friendlyTimeDiff,
      'slNo': instance.slNo,
    };
