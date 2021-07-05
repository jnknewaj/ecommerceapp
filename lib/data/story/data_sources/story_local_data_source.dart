import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/story/entities/story.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

const String boxStories = 'boxStories';
const String keyFirstThreeStories = 'keyFirstThreeStories';
const String keyNextThreeStories = 'keyNextThreeStories';
const String keyRestOfTheStories = 'keyRestOfTheStories';

abstract class IStoryLocalDataSource {
  Future<void> cacheFirstThreeStories(List<Story> stories);
  Future<void> cacheNextThreeStories(List<Story> stories);
  Future<void> cacheRestOfTheStories(List<Story> stories);

  /// Throws [CacheException] if there is no cached data
  List<Story> fetchCachedFirstThreeStories();

  /// Throws [CacheException] if there is no cached data
  List<Story> fetchCachedNextThreeStories();

  /// Throws [CacheException] if there is no cached data
  List<Story> fetchCachedRestOfTheStories();
}

@LazySingleton(as: IStoryLocalDataSource)
class StoryLocalDataSource implements IStoryLocalDataSource {
  @override
  Future<void> cacheFirstThreeStories(List<Story> stories) async {
    await Hive.box(boxStories).put(keyFirstThreeStories, stories);
    return;
  }

  @override
  Future<void> cacheNextThreeStories(List<Story> stories) async {
    await Hive.box(boxStories).put(keyNextThreeStories, stories);
    return;
  }

  @override
  Future<void> cacheRestOfTheStories(List<Story> stories) async {
    await Hive.box(boxStories).put(keyRestOfTheStories, stories);
    return;
  }

  @override
  List<Story> fetchCachedFirstThreeStories() {
    try {
      final stories = _fetchCachedStories(keyFirstThreeStories);
      return stories;
    } on CacheException {
      throw CacheException();
    }
  }

  @override
  List<Story> fetchCachedNextThreeStories() {
    try {
      final stories = _fetchCachedStories(keyNextThreeStories);
      return stories;
    } on CacheException {
      throw CacheException();
    }
  }

  @override
  List<Story> fetchCachedRestOfTheStories() {
    try {
      final stories = _fetchCachedStories(keyRestOfTheStories);
      return stories;
    } on CacheException {
      throw CacheException();
    }
  }

  /// Throws [CacheException]
  List<Story> _fetchCachedStories(String key) {
    final List<dynamic>? storiesData = Hive.box(boxStories).get(key);
    final List<Story>? stories = storiesData?.map((s) => s as Story).toList();

    if (stories == null) {
      throw CacheException();
    } else {
      return stories;
    }
  }
}
