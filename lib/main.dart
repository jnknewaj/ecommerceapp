import 'package:ecommerce_app/data/product/data_sources/product_local_data_source.dart';
import 'package:ecommerce_app/data/seller/data_sources/seller_local_data_source.dart';
import 'package:ecommerce_app/domain/product/entities/product.dart';
import 'package:ecommerce_app/domain/seller/entities/seller.dart';
import 'package:ecommerce_app/injection.dart';
import 'package:ecommerce_app/presentation/home/pages/home_page.dart';
import 'package:ecommerce_app/utils/hive_utils.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  registerHiveAdapters();
  await openHiveBoxes();
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Center(
        child: HomePage(),
      ),
    );
  }
}
