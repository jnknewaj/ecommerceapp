import 'dart:convert';

import 'package:ecommerce_app/data/product/models/product_dto.dart';
import 'package:ecommerce_app/data/seller/data_sources/seller_remote_data_source.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

/// Throws [ServerException] is responseCode is other than 200
abstract class IProductRemoteDataSource {
  Future<List<Product>> fetchTrendingProducts();
}

@LazySingleton(as: IProductRemoteDataSource)
class ProductRemoteDataSource implements IProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDataSource(this.client);

  @override
  Future<List<Product>> fetchTrendingProducts() async {
    final url = baseUrl + 'trendingProducts';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List dataList = json.decode(response.body);

      final List data = dataList[0];

      final products =
          data.map((e) => ProductDto.fromJson(e).toDomain()).toList();

      return products;
    } else {
      throw ServerException();
    }
  }
}
