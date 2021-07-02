import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:ecommerce_app/domain/story/entities/story.dart';

abstract class IStoryRepository {
  Future<Either<Failures, List<Story>>> getFirstThreeStories();
  Future<Either<Failures, List<Story>>> getNextThreeStories();
  Future<Either<Failures, List<Story>>> getRestOfStories();
}
