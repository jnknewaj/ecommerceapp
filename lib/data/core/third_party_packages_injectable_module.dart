import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class ThirdPartyPackagesInjectableModule {
  @lazySingleton
  http.Client get httpClient => http.Client();
  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker => InternetConnectionChecker();
}