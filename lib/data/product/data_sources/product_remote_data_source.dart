import 'dart:convert';
import 'dart:io';
import 'package:ecommerce_app/data/product/models/product_dto.dart';
import 'package:ecommerce_app/data/seller/data_sources/seller_remote_data_source.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'package:ecommerce_app/res/strings/constant_strings.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

/// Throws [ServerException] is responseCode is other than 200
abstract class IProductRemoteDataSource {
  /// Throws [ServerException] & [SocketException]
  Future<List<Product>> fetchTrendingProducts();

  /// Throws [ServerException] & [SocketException]
  Future<List<Product>> fetchNewArrivalProducts();
}

@LazySingleton(as: IProductRemoteDataSource)
class ProductRemoteDataSource implements IProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDataSource(this.client);

  @override
  Future<List<Product>> fetchTrendingProducts() async {
    try {
      final url = '${baseUrl}trendingProducts';
      final products = await _fetchProducts(url);
      return products;
    } on ServerException {
      throw ServerException;
    } on SocketException {
      throw const SocketException(noNetwork);
    }
  }

  @override
  Future<List<Product>> fetchNewArrivalProducts() async {
    try {
      final url = '${baseUrl}newArrivals';
      final products = await _fetchProducts(url);
      return products;
    } on ServerException {
      throw ServerException;
    } on SocketException {
      throw const SocketException(noNetwork);
    }
  }

  /// Throws [ServerException]
  Future<List<Product>> _fetchProducts(String url) async {
    final response = await client.get(Uri.parse(url));
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
