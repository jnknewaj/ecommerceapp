// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoryAdapter extends TypeAdapter<_$_Story> {
  @override
  final int typeId = 2;

  @override
  _$_Story read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Story(
      storyTime: fields[0] as String,
      story: fields[1] as String,
      storyType: fields[2] as String,
      storyImage: fields[3] as String,
      storyAdditionalImages: fields[4] as String?,
      promoImage: fields[5] as String,
      orderQty: fields[6] as int,
      lastAddToCart: fields[7] as String,
      availableStock: fields[8] as int,
      myId: fields[9] as String,
      ezShopName: fields[10] as String,
      companyName: fields[11] as String?,
      companyLogo: fields[12] as String?,
      companyEmail: fields[13] as String?,
      currencyCode: fields[14] as String,
      unitPrice: fields[15] as int,
      discountAmount: fields[16] as int,
      discountPercent: fields[17] as int,
      iMyID: fields[18] as String,
      shopName: fields[19] as String,
      shopLogo: fields[20] as String,
      shopLink: fields[21] as String,
      friendlyTimeDiff: fields[22] as String,
      slNo: fields[23] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Story obj) {
    writer
      ..writeByte(24)
      ..writeByte(0)
      ..write(obj.storyTime)
      ..writeByte(1)
      ..write(obj.story)
      ..writeByte(2)
      ..write(obj.storyType)
      ..writeByte(3)
      ..write(obj.storyImage)
      ..writeByte(4)
      ..write(obj.storyAdditionalImages)
      ..writeByte(5)
      ..write(obj.promoImage)
      ..writeByte(6)
      ..write(obj.orderQty)
      ..writeByte(7)
      ..write(obj.lastAddToCart)
      ..writeByte(8)
      ..write(obj.availableStock)
      ..writeByte(9)
      ..write(obj.myId)
      ..writeByte(10)
      ..write(obj.ezShopName)
      ..writeByte(11)
      ..write(obj.companyName)
      ..writeByte(12)
      ..write(obj.companyLogo)
      ..writeByte(13)
      ..write(obj.companyEmail)
      ..writeByte(14)
      ..write(obj.currencyCode)
      ..writeByte(15)
      ..write(obj.unitPrice)
      ..writeByte(16)
      ..write(obj.discountAmount)
      ..writeByte(17)
      ..write(obj.discountPercent)
      ..writeByte(18)
      ..write(obj.iMyID)
      ..writeByte(19)
      ..write(obj.shopName)
      ..writeByte(20)
      ..write(obj.shopLogo)
      ..writeByte(21)
      ..write(obj.shopLink)
      ..writeByte(22)
      ..write(obj.friendlyTimeDiff)
      ..writeByte(23)
      ..write(obj.slNo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
