import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: INetworkInfo)
class NetworkInfo implements INetworkInfo {
  final InternetConnectionChecker internetConnectionChecker;

  NetworkInfo(this.internetConnectionChecker);

  @override
  Future<bool> get isConnected => internetConnectionChecker.hasConnection;
}
