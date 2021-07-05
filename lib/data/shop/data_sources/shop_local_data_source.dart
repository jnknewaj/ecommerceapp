import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/shop/entities/shop.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String boxShops = 'boxShops';
const String keyNewShops = 'keyNewShops';

abstract class IShopLocalDataSource {
  Future<void> cacheNewShops(List<Shop> shops);

  /// Throws [CacheException] if there is no cached data
  List<Shop> fetchCachedNewShops();
}

class ShopLocalDataSource implements IShopLocalDataSource {
  @override
  Future<void> cacheNewShops(List<Shop> shops) async {
    await Hive.box(boxShops).put(keyNewShops, shops);
    return;
  }

  @override
  List<Shop> fetchCachedNewShops() {
    final List<dynamic>? shopsData = Hive.box(boxShops).get(keyNewShops);
    final List<Shop>? shops = shopsData?.map((s) => s as Shop).toList();

    if (shops == null) {
      throw CacheException();
    } else {
      return shops;
    }
  }
}
