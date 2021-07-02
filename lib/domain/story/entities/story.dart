import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';

@freezed
abstract class Story with _$Story {
  const factory Story({
    required String storyTime,
    required String story,
    required String storyType,
    required String storyImage,
    required String? storyAdditionalImages,
    required String promoImage,
    required int orderQty,
    required String lastAddToCart,
    required int availableStock,
    required String myId,
    required String ezShopName,
    required String? companyName,
    required String? companyLogo,
    required String? companyEmail,
    required String currencyCode,
    required int unitPrice,
    required int discountAmount,
    required int discountPercent,
    required String iMyID,
    required String shopName,
    required String shopLogo,
    required String shopLink,
    required String friendlyTimeDiff,
    required String slNo,
  }) = _Story;
}
