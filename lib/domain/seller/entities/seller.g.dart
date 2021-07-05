// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SellerAdapter extends TypeAdapter<_$_Seller> {
  @override
  final int typeId = 1;

  @override
  _$_Seller read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Seller(
      slNo: fields[0] as String,
      sellerName: fields[1] as String,
      sellerProfilePhoto: fields[2] as String,
      sellerItemPhoto: fields[3] as String,
      ezShopName: fields[4] as String,
      defaultPushScore: fields[5] as double,
      aboutCompany: fields[6] as String?,
      allowCOD: fields[7] as int,
      division: fields[8] as String?,
      subDivision: fields[9] as String?,
      city: fields[10] as String?,
      zipcode: fields[11] as String?,
      country: fields[12] as String,
      currencyCode: fields[13] as String,
      orderQty: fields[14] as int,
      orderAmount: fields[15] as int,
      salesQty: fields[16] as int,
      salesAmount: fields[17] as int,
      highestDiscountPercent: fields[18] as int,
      lastAddToCart: fields[19] as String,
      lastAddToCartThatSold: fields[20] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Seller obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.slNo)
      ..writeByte(1)
      ..write(obj.sellerName)
      ..writeByte(2)
      ..write(obj.sellerProfilePhoto)
      ..writeByte(3)
      ..write(obj.sellerItemPhoto)
      ..writeByte(4)
      ..write(obj.ezShopName)
      ..writeByte(5)
      ..write(obj.defaultPushScore)
      ..writeByte(6)
      ..write(obj.aboutCompany)
      ..writeByte(7)
      ..write(obj.allowCOD)
      ..writeByte(8)
      ..write(obj.division)
      ..writeByte(9)
      ..write(obj.subDivision)
      ..writeByte(10)
      ..write(obj.city)
      ..writeByte(11)
      ..write(obj.zipcode)
      ..writeByte(12)
      ..write(obj.country)
      ..writeByte(13)
      ..write(obj.currencyCode)
      ..writeByte(14)
      ..write(obj.orderQty)
      ..writeByte(15)
      ..write(obj.orderAmount)
      ..writeByte(16)
      ..write(obj.salesQty)
      ..writeByte(17)
      ..write(obj.salesAmount)
      ..writeByte(18)
      ..write(obj.highestDiscountPercent)
      ..writeByte(19)
      ..write(obj.lastAddToCart)
      ..writeByte(20)
      ..write(obj.lastAddToCartThatSold);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SellerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
