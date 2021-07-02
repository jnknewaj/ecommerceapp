import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/story/data_sources/story_remote_data_source.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/story/entities/story.dart';
import 'package:ecommerce_app/domain/story/repositories/i_story_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStoryRepository)
class StoryRepository implements IStoryRepository {
  final IStoryRemoteDataSource _remoteDataSource;

  StoryRepository(this._remoteDataSource);

  @override
  Future<Either<Failures, List<Story>>> getFirstThreeStories() async {
    try {
      final stories = await _remoteDataSource.fetchFirstThreeStories();
      return right(stories);
    } on ServerException {
      return left(const Failures.serverFailure());
    }
  }

  @override
  Future<Either<Failures, List<Story>>> getNextThreeStories() async {
    try {
      final stories = await _remoteDataSource.fetchNextThreeStories();
      return right(stories);
    } on ServerException {
      return left(const Failures.serverFailure());
    }
  }

  @override
  Future<Either<Failures, List<Story>>> getRestOfStories() async {
    try {
      final stories = await _remoteDataSource.fetchRestOfTheStories();
      return right(stories);
    } on ServerException {
      return left(const Failures.serverFailure());
    }
  }
}
