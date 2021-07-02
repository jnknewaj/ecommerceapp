// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'data/core/third_party_packages_injectable_module.dart' as _i16;
import 'data/product/data_sources/product_remote_data_source.dart' as _i4;
import 'data/product/repositories/product_repository.dart' as _i6;
import 'data/seller/data_sources/seller_remote_data_source.dart' as _i7;
import 'data/seller/repositories/seller_repository.dart' as _i9;
import 'data/shop/data_sources/shop_remote_data_source.dart' as _i10;
import 'data/shop/repositories/shop_repository.dart' as _i12;
import 'domain/product/repositories/i_product_repository.dart' as _i5;
import 'domain/seller/repositories/i_seller_repository.dart' as _i8;
import 'domain/shop/repositories/i_shop_repository.dart' as _i11;
import 'presentation/home/blocs/new_shops_watcher/new_shops_watcher_bloc.dart'
    as _i13;
import 'presentation/home/blocs/trending_products_watcher/trending_products_watcher_bloc.dart'
    as _i14;
import 'presentation/home/blocs/trending_sellers_watcher/trending_sellers_fetcher_bloc.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyPackagesInjectableModule =
      _$ThirdPartyPackagesInjectableModule();
  gh.lazySingleton<_i3.Client>(
      () => thirdPartyPackagesInjectableModule.httpClient);
  gh.lazySingleton<_i4.IProductRemoteDataSource>(
      () => _i4.ProductRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i5.IProductRepository>(
      () => _i6.ProductRepository(get<_i4.IProductRemoteDataSource>()));
  gh.lazySingleton<_i7.ISellerRemoteDataSource>(
      () => _i7.SellerRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i8.ISellerRepository>(
      () => _i9.SellerRepository(get<_i7.ISellerRemoteDataSource>()));
  gh.lazySingleton<_i10.IShopRemoteDataSource>(
      () => _i10.ShopRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i11.IShopRepository>(
      () => _i12.ShopRepository(get<_i10.IShopRemoteDataSource>()));
  gh.factory<_i13.NewShopsWatcherBloc>(
      () => _i13.NewShopsWatcherBloc(get<_i11.IShopRepository>()));
  gh.factory<_i14.TrendingProductsWatcherBloc>(
      () => _i14.TrendingProductsWatcherBloc(get<_i5.IProductRepository>()));
  gh.factory<_i15.TrendingSellersFetcherBloc>(
      () => _i15.TrendingSellersFetcherBloc(get<_i8.ISellerRepository>()));
  return get;
}

class _$ThirdPartyPackagesInjectableModule
    extends _i16.ThirdPartyPackagesInjectableModule {}
