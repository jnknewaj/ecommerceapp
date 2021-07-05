import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/story/data_sources/story_local_data_source.dart';
import 'package:ecommerce_app/data/story/data_sources/story_remote_data_source.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/core/network/network_info.dart';
import 'package:ecommerce_app/domain/story/entities/story.dart';
import 'package:ecommerce_app/domain/story/repositories/i_story_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStoryRepository)
class StoryRepository implements IStoryRepository {
  final IStoryRemoteDataSource _remoteDataSource;
  final IStoryLocalDataSource _localDataSource;
  final INetworkInfo _networkInfo;

  StoryRepository(
    this._remoteDataSource,
    this._localDataSource,
    this._networkInfo,
  );

  @override
  Future<Either<Failures, List<Story>>> getFirstThreeStories() async {
    final hasInternet = await _networkInfo.isConnected;

    if (hasInternet) {
      try {
        final storiesList = await _remoteDataSource.fetchFirstThreeStories();
        _localDataSource.cacheFirstThreeStories(storiesList);
        return right(storiesList);
      } on ServerException {
        return left(const Failures.serverFailure());
      }
    } else {
      try {
        final sellers = _localDataSource.fetchCachedFirstThreeStories();
        return right(sellers);
      } on CacheException {
        return left(const Failures.cacheFailure());
      }
    }
  }

  @override
  Future<Either<Failures, List<Story>>> getNextThreeStories() async {
    final hasInternet = await _networkInfo.isConnected;

    if (hasInternet) {
      try {
        final storiesList = await _remoteDataSource.fetchNextThreeStories();
        _localDataSource.cacheNextThreeStories(storiesList);
        return right(storiesList);
      } on ServerException {
        return left(const Failures.serverFailure());
      }
    } else {
      try {
        final sellers = _localDataSource.fetchCachedNextThreeStories();
        return right(sellers);
      } on CacheException {
        return left(const Failures.cacheFailure());
      }
    }
  }

  @override
  Future<Either<Failures, List<Story>>> getRestOfStories() async {
    final hasInternet = await _networkInfo.isConnected;

    if (hasInternet) {
      try {
        final storiesList = await _remoteDataSource.fetchRestOfTheStories();
        _localDataSource.cacheRestOfTheStories(storiesList);
        return right(storiesList);
      } on ServerException {
        return left(const Failures.serverFailure());
      }
    } else {
      try {
        final sellers = _localDataSource.fetchCachedRestOfTheStories();
        return right(sellers);
      } on CacheException {
        return left(const Failures.cacheFailure());
      }
    }
  }
}
