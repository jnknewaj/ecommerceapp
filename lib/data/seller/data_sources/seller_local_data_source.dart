import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/seller/entities/seller.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

const String boxTrendingSeller = 'boxTrendingSeller';
const String keyTrendingSeller = 'keyTrendingSeller';

abstract class ISellerLocalDataSource {
  Future<void> cacheTrendingSellers(List<Seller> sellers);

  /// Throws [CacheException] is there is no cached data
  List<Seller> fetchCachedTrendingSellers();
}

@LazySingleton(as: ISellerLocalDataSource)
class SellerLocalDataSource implements ISellerLocalDataSource {
  @override
  List<Seller> fetchCachedTrendingSellers() {
    final List<dynamic>? sellersData =
        Hive.box(boxTrendingSeller).get(keyTrendingSeller);

    final List<Seller>? sellers = sellersData?.map((s) => s as Seller).toList();

    if (sellers == null) {
      throw CacheException();
    } else {
      return sellers;
    }
  }

  @override
  Future<void> cacheTrendingSellers(List<Seller> sellers) async {
    await Hive.box(boxTrendingSeller).put(keyTrendingSeller, sellers);
    return;
  }
}
