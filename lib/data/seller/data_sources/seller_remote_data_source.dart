import 'dart:convert';
import 'package:ecommerce_app/data/seller/models/seller_dto.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/seller/entities/seller.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

const String baseUrl =
    'https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=';

/// Throws [ServerException] is responseCode is other than 200
abstract class ISellerRemoteDataSource {
  Future<List<Seller>> fetchTrendingSellers();
}

@LazySingleton(as: ISellerRemoteDataSource)
class SellerRemoteDataSource implements ISellerRemoteDataSource {
  final http.Client client;

  SellerRemoteDataSource(this.client);

  @override
  Future<List<Seller>> fetchTrendingSellers() async {
    final url = baseUrl + 'trending_seller';
    final response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List dataList = json.decode(response.body);

      final List data = dataList[0];

      final sellers =
          data.map((e) => SellerDto.fromJson(e).toDomain()).toList();

      return sellers;
    } else {
      throw ServerException();
    }
  }
}
