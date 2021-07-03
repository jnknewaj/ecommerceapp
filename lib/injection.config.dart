// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'data/core/third_party_packages_injectable_module.dart' as _i22;
import 'data/product/data_sources/product_remote_data_source.dart' as _i4;
import 'data/product/repositories/product_repository.dart' as _i6;
import 'data/seller/data_sources/seller_local_data_source.dart' as _i7;
import 'data/seller/data_sources/seller_remote_data_source.dart' as _i8;
import 'data/seller/repositories/seller_repository.dart' as _i10;
import 'data/shop/data_sources/shop_remote_data_source.dart' as _i11;
import 'data/shop/repositories/shop_repository.dart' as _i13;
import 'data/story/data_sources/story_remote_data_source.dart' as _i14;
import 'data/story/repositories/story_repository.dart' as _i16;
import 'domain/product/repositories/i_product_repository.dart' as _i5;
import 'domain/seller/repositories/i_seller_repository.dart' as _i9;
import 'domain/shop/repositories/i_shop_repository.dart' as _i12;
import 'domain/story/repositories/i_story_repository.dart' as _i15;
import 'presentation/home/blocs/new_arrival_products_watcher/new_arrival_products_watcher_bloc.dart'
    as _i17;
import 'presentation/home/blocs/new_shops_watcher/new_shops_watcher_bloc.dart'
    as _i18;
import 'presentation/home/blocs/stories_watcher/stories_watcher_bloc.dart'
    as _i19;
import 'presentation/home/blocs/trending_products_watcher/trending_products_watcher_bloc.dart'
    as _i20;
import 'presentation/home/blocs/trending_sellers_watcher/trending_sellers_fetcher_bloc.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.ISellerLocalDataSource>(
      () => _i7.SellerLocalDataSource());
  gh.lazySingleton<_i8.ISellerRemoteDataSource>(() =>
      _i8.SellerRemoteDataSource(
          get<_i3.Client>(), get<_i7.ISellerLocalDataSource>()));
  gh.lazySingleton<_i9.ISellerRepository>(() => _i10.SellerRepository(
      get<_i8.ISellerRemoteDataSource>(), get<_i7.ISellerLocalDataSource>()));
  gh.lazySingleton<_i11.IShopRemoteDataSource>(
      () => _i11.ShopRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i12.IShopRepository>(
      () => _i13.ShopRepository(get<_i11.IShopRemoteDataSource>()));
  gh.lazySingleton<_i14.IStoryRemoteDataSource>(
      () => _i14.StoryRemoteDataSource(get<_i3.Client>()));
  gh.lazySingleton<_i15.IStoryRepository>(
      () => _i16.StoryRepository(get<_i14.IStoryRemoteDataSource>()));
  gh.factory<_i17.NewArrivalProductsWatcherBloc>(
      () => _i17.NewArrivalProductsWatcherBloc(get<_i5.IProductRepository>()));
  gh.factory<_i18.NewShopsWatcherBloc>(
      () => _i18.NewShopsWatcherBloc(get<_i12.IShopRepository>()));
  gh.factory<_i19.StoriesWatcherBloc>(
      () => _i19.StoriesWatcherBloc(get<_i15.IStoryRepository>()));
  gh.factory<_i20.TrendingProductsWatcherBloc>(
      () => _i20.TrendingProductsWatcherBloc(get<_i5.IProductRepository>()));
  gh.factory<_i21.TrendingSellersFetcherBloc>(
      () => _i21.TrendingSellersFetcherBloc(get<_i9.ISellerRepository>()));
  return get;
}

class _$ThirdPartyPackagesInjectableModule
    extends _i22.ThirdPartyPackagesInjectableModule {}
