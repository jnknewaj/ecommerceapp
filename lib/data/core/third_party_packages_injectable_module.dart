import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class ThirdPartyPackagesInjectableModule {
  @lazySingleton
  http.Client get httpClient => http.Client();
}