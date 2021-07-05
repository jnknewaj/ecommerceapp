import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'seller.freezed.dart';
part 'seller.g.dart';

@freezed
abstract class Seller with _$Seller {
  @HiveType(typeId: 1, adapterName: 'SellerAdapter')
  const factory Seller({
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
    @HiveField(11) required String? zipcode,
    @HiveField(12) required String country,
    @HiveField(13) required String currencyCode,
    @HiveField(14) required int orderQty,
    @HiveField(15) required int orderAmount,
    @HiveField(16) required int salesQty,
    @HiveField(17) required int salesAmount,
    @HiveField(18) required int highestDiscountPercent,
    @HiveField(19) required String lastAddToCart,
    @HiveField(20) required String lastAddToCartThatSold,
  }) = _Seller;
}
