import 'dart:convert';

import 'package:ecommerce_app/data/seller/data_sources/seller_remote_data_source.dart';
import 'package:ecommerce_app/data/story/models/story_dto.dart';
import 'package:ecommerce_app/domain/core/errors/exceptions.dart';
import 'package:ecommerce_app/domain/story/entities/story.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

/// Throws [ServerException] is responseCode is other than 200
abstract class IStoryRemoteDataSource {
  Future<List<Story>> fetchFirstThreeStories();
  Future<List<Story>> fetchNextThreeStories();
  Future<List<Story>> fetchRestOfTheStories();
}

enum StoryQuery { firstThree, nextThree, rest }

@LazySingleton(as: IStoryRemoteDataSource)
class StoryRemoteDataSource implements IStoryRemoteDataSource {
  final http.Client client;

  StoryRemoteDataSource(this.client);

  @override
  Future<List<Story>> fetchFirstThreeStories() async {
    try {
      final stories = await _fetchStories(StoryQuery.firstThree);
      return stories;
    } on ServerException {
      throw ServerException();
    }
  }

  @override
  Future<List<Story>> fetchNextThreeStories() async {
    try {
      final stories = await _fetchStories(StoryQuery.nextThree);
      return stories;
    } on ServerException {
      throw ServerException();
    }
  }

  @override
  Future<List<Story>> fetchRestOfTheStories() async {
    try {
      final stories = await _fetchStories(StoryQuery.rest);
      return stories;
    } on ServerException {
      throw ServerException();
    }
  }

  Future<List<Story>> _fetchStories(StoryQuery storyQuery) async {
    final url = baseUrl + 'stories';
    final response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List dataList = json.decode(response.body);

      final List data = dataList[0];

      final stories = data.map((e) => StoryDto.fromJson(e).toDomain()).toList();

      if (storyQuery == StoryQuery.firstThree) {
        List<Story> firstThreeStories = [];
        for (var i = 0; i < 3; i++) {
          firstThreeStories.add(stories[i]);
        }
        return firstThreeStories;
      } else if (storyQuery == StoryQuery.nextThree) {
        List<Story> nextThreeStories = [];
        for (var i = 3; i < 6; i++) {
          nextThreeStories.add(stories[i]);
        }
        return nextThreeStories;
      } else {
        List<Story> restStories = [];
        for (var i = 6; i < stories.length; i++) {
          restStories.add(stories[i]);
        }
        return restStories;
      }
    } else {
      throw ServerException();
    }
  }
}
