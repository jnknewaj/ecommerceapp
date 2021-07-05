import 'dart:convert';

import 'package:ecommerce_app/data/seller/data_sources/seller_remote_data_source.dart';
import 'package:ecommerce_app/data/shop/models/shop_dto.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/shop/entities/shop.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

abstract class IShopRemoteDataSource {
  /// Throws [ServerException] if responseCode is other than 200
  Future<List<Shop>> fetchNewShops();
}

@LazySingleton(as: IShopRemoteDataSource)
class ShopRemoteDataSource implements IShopRemoteDataSource {
  final http.Client client;

  ShopRemoteDataSource(this.client);

  @override
  Future<List<Shop>> fetchNewShops() async {
    final url = baseUrl + 'newShops';
    final response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List dataList = json.decode(response.body);

      final List data = dataList[0];

      final shops = data.map((e) => ShopDto.fromJson(e).toDomain()).toList();

      return shops;
    } else {
      throw ServerException();
    }
  }
}
