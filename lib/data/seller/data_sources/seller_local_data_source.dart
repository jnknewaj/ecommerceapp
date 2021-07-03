import 'package:ecommerce_app/data/seller/models/seller_dto.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/seller/entities/seller.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

const String boxTrendingSeller = 'trendingSellerBox';
const String keyTrendingSeller = 'keyTrendingSeller';

abstract class ISellerLocalDataSource {
  Future<void> storeTrendingSellers(List sellers);
  Future<List<Seller>> fetchCachedTrendingSellers();
}

@LazySingleton(as: ISellerLocalDataSource)
class SellerLocalDataSource implements ISellerLocalDataSource {
  @override
  Future<List<Seller>> fetchCachedTrendingSellers() async {
    final data = Hive.box(boxTrendingSeller).get(keyTrendingSeller);

    if (data == null) {
      throw CacheException();
    } else {
      final sellers =
          data.map((e) => SellerDto.fromJson(e).toDomain()).toList();
      return sellers;
    }
  }

  @override
  Future<void> storeTrendingSellers(List sellers) async {
    await Hive.box(boxTrendingSeller).put(keyTrendingSeller, sellers);
    return;
  }
}
