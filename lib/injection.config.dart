// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i11;

import 'data/core/third_party_packages_injectable_module.dart' as _i27;
import 'data/product/data_sources/product_local_data_source.dart' as _i4;
import 'data/product/data_sources/product_remote_data_source.dart' as _i5;
import 'data/product/repositories/product_repository.dart' as _i14;
import 'data/seller/data_sources/seller_local_data_source.dart' as _i6;
import 'data/seller/data_sources/seller_remote_data_source.dart' as _i7;
import 'data/seller/repositories/seller_repository.dart' as _i16;
import 'data/shop/data_sources/shop_local_data_source.dart' as _i19;
import 'data/shop/data_sources/shop_remote_data_source.dart' as _i8;
import 'data/shop/repositories/shop_repository.dart' as _i18;
import 'data/story/data_sources/story_local_data_source.dart' as _i9;
import 'data/story/data_sources/story_remote_data_source.dart' as _i10;
import 'data/story/repositories/story_repository.dart' as _i21;
import 'domain/core/network/network_info.dart' as _i12;
import 'domain/product/repositories/i_product_repository.dart' as _i13;
import 'domain/seller/repositories/i_seller_repository.dart' as _i15;
import 'domain/shop/repositories/i_shop_repository.dart' as _i17;
import 'domain/story/repositories/i_story_repository.dart' as _i20;
import 'presentation/home/blocs/new_arrival_products_watcher/new_arrival_products_watcher_bloc.dart'
    as _i22;
import 'presentation/home/blocs/new_shops_watcher/new_shops_watcher_bloc.dart'
    as _i23;
import 'presentation/home/blocs/stories_watcher/stories_watcher_bloc.dart'
    as _i24;
import 'presentation/home/blocs/trending_products_watcher/trending_products_watcher_bloc.dart'
    as _i25;
import 'presentation/home/blocs/trending_sellers_watcher/trending_sellers_fetcher_bloc.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyPackagesInjectableModule =
      _$ThirdPartyPackagesInjectableModule();
  gh.lazySingleton<_i3.Client>(
      () => thirdPartyPackagesInjectableModule.httpClient);
  gh.lazySingleton<_i4.IProductLocalDataSource>(
      () => _i4.ProductLocalDataSource());
  gh.lazySingleton<_i5.IProductRemoteDataSource>(
      () => _i5.ProductRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i6.ISellerLocalDataSource>(
      () => _i6.SellerLocalDataSource());
  gh.lazySingleton<_i7.ISellerRemoteDataSource>(
      () => _i7.SellerRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i8.IShopRemoteDataSource>(
      () => _i8.ShopRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i9.IStoryLocalDataSource>(() => _i9.StoryLocalDataSource());
  gh.lazySingleton<_i10.IStoryRemoteDataSource>(
      () => _i10.StoryRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i11.InternetConnectionChecker>(
      () => thirdPartyPackagesInjectableModule.internetConnectionChecker);
  gh.lazySingleton<_i12.INetworkInfo>(
      () => _i12.NetworkInfo(get<_i11.InternetConnectionChecker>()));
  gh.lazySingleton<_i13.IProductRepository>(() => _i14.ProductRepository(
      get<_i5.IProductRemoteDataSource>(),
      get<_i4.IProductLocalDataSource>(),
      get<_i12.INetworkInfo>()));
  gh.lazySingleton<_i15.ISellerRepository>(() => _i16.SellerRepository(
      get<_i7.ISellerRemoteDataSource>(),
      get<_i6.ISellerLocalDataSource>(),
      get<_i12.INetworkInfo>()));
  gh.lazySingleton<_i17.IShopRepository>(() => _i18.ShopRepository(
      get<_i8.IShopRemoteDataSource>(),
      get<_i19.IShopLocalDataSource>(),
      get<_i12.INetworkInfo>()));
  gh.lazySingleton<_i20.IStoryRepository>(() => _i21.StoryRepository(
      get<_i10.IStoryRemoteDataSource>(),
      get<_i9.IStoryLocalDataSource>(),
      get<_i12.INetworkInfo>()));
  gh.factory<_i22.NewArrivalProductsWatcherBloc>(
      () => _i22.NewArrivalProductsWatcherBloc(get<_i13.IProductRepository>()));
  gh.factory<_i23.NewShopsWatcherBloc>(
      () => _i23.NewShopsWatcherBloc(get<_i17.IShopRepository>()));
  gh.factory<_i24.StoriesWatcherBloc>(
      () => _i24.StoriesWatcherBloc(get<_i20.IStoryRepository>()));
  gh.factory<_i25.TrendingProductsWatcherBloc>(
      () => _i25.TrendingProductsWatcherBloc(get<_i13.IProductRepository>()));
  gh.factory<_i26.TrendingSellersFetcherBloc>(
      () => _i26.TrendingSellersFetcherBloc(get<_i15.ISellerRepository>()));
  return get;
}

class _$ThirdPartyPackagesInjectableModule
    extends _i27.ThirdPartyPackagesInjectableModule {}
