import 'package:ecommerce_app/domain/story/entities/story.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_dto.freezed.dart';
part 'story_dto.g.dart';

@freezed
abstract class StoryDto implements _$StoryDto {
  const StoryDto._();

  const factory StoryDto({
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
  }) = _StoryDto;

  factory StoryDto.fromDomain(Story story) {
    return StoryDto(
      storyTime: story.storyTime,
      story: story.story,
      storyType: story.storyType,
      storyImage: story.storyImage,
      storyAdditionalImages: story.storyAdditionalImages,
      promoImage: story.promoImage,
      orderQty: story.orderQty,
      lastAddToCart: story.lastAddToCart,
      availableStock: story.availableStock,
      myId: story.myId,
      ezShopName: story.ezShopName,
      companyName: story.companyName,
      companyLogo: story.companyLogo,
      companyEmail: story.companyEmail,
      currencyCode: story.currencyCode,
      unitPrice: story.unitPrice,
      discountAmount: story.discountAmount,
      discountPercent: story.discountPercent,
      iMyID: story.iMyID,
      shopName: story.shopName,
      shopLogo: story.shopLogo,
      shopLink: story.shopLink,
      friendlyTimeDiff: story.friendlyTimeDiff,
      slNo: story.slNo,
    );
  }

  Story toDomain() {
    return Story(
      storyTime: storyTime,
      story: story,
      storyType: storyType,
      storyImage: storyImage,
      storyAdditionalImages: storyAdditionalImages,
      promoImage: promoImage,
      orderQty: orderQty,
      lastAddToCart: lastAddToCart,
      availableStock: availableStock,
      myId: myId,
      ezShopName: ezShopName,
      companyName: companyName,
      companyLogo: companyLogo,
      companyEmail: companyEmail,
      currencyCode: currencyCode,
      unitPrice: unitPrice,
      discountAmount: discountAmount,
      discountPercent: discountPercent,
      iMyID: iMyID,
      shopName: shopName,
      shopLogo: shopLogo,
      shopLink: shopLink,
      friendlyTimeDiff: friendlyTimeDiff,
      slNo: slNo,
    );
  }

  factory StoryDto.fromJson(Map<String, dynamic> json) =>
      _$StoryDtoFromJson(json);
}
