import 'package:ecommerce_app/data/seller/data_sources/seller_remote_data_source.dart';
import 'package:ecommerce_app/injection.dart';
import 'package:ecommerce_app/presentation/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //final sellerRemoteDataSource = SellerRemoteDataSource();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: const HomePage(),
        // child: TextButton(
        //   onPressed: () async {
        //     final data = await sellerRemoteDataSource.fetchTrendingSellers();
        //     print('TOtal Sellers : ${data.length}');
        //   },
        //   child: Text('Hello'),
        // ),
      ),
    );
  }
}
