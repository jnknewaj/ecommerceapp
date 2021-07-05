import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'shop.freezed.dart';
part 'shop.g.dart';

@freezed
abstract class Shop with _$Shop {
  @HiveType(typeId: 3, adapterName: 'ShopAdapter')
  const factory Shop({
    @HiveField(0) required String slNo,
    @HiveField(1) required String sellerName,
    @HiveField(2) required String sellerProfilePhoto,
    @HiveField(3) required String sellerItemPhoto,
    @HiveField(4) required String ezShopName,
    @HiveField(5) required double defaultPushScore,
    @HiveField(6) required String? aboutCompany,
    @HiveField(7) required int allowCOD,
    @HiveField(8) required String? division,
    @HiveField(9) required String? subDivision,
    @HiveField(10) required String? city,
    @HiveField(11) required String? state,
    @HiveField(12) required String? zipcode,
    @HiveField(13) required String country,
    @HiveField(14) required String currencyCode,
    @HiveField(15) required int orderQty,
    @HiveField(16) required int orderAmount,
    @HiveField(17) required int salesQty,
    @HiveField(18) required int salesAmount,
    @HiveField(19) required int highestDiscountPercent,
    @HiveField(20) required String lastAddToCart,
    @HiveField(21) required String lastAddToCartThatSold,
  }) = _Shop;
}
