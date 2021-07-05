import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'story.freezed.dart';
part 'story.g.dart';

@freezed
abstract class Story with _$Story {
  @HiveType(typeId: 2, adapterName: 'StoryAdapter')
  const factory Story({
    @HiveField(0) required String storyTime,
    @HiveField(1) required String story,
    @HiveField(2) required String storyType,
    @HiveField(3) required String storyImage,
    @HiveField(4) required String? storyAdditionalImages,
    @HiveField(5) required String promoImage,
    @HiveField(6) required int orderQty,
    @HiveField(7) required String lastAddToCart,
    @HiveField(8) required int availableStock,
    @HiveField(9) required String myId,
    @HiveField(10) required String ezShopName,
    @HiveField(11) required String? companyName,
    @HiveField(12) required String? companyLogo,
    @HiveField(13) required String? companyEmail,
    @HiveField(14) required String currencyCode,
    @HiveField(15) required int unitPrice,
    @HiveField(16) required int discountAmount,
    @HiveField(17) required int discountPercent,
    @HiveField(18) required String iMyID,
    @HiveField(19) required String shopName,
    @HiveField(20) required String shopLogo,
    @HiveField(21) required String shopLink,
    @HiveField(22) required String friendlyTimeDiff,
    @HiveField(23) required String slNo,
  }) = _Story;
}
