import 'package:tiktok_clone/domain/datasources/video_posts_datasource.dart';
import 'package:tiktok_clone/domain/entities/video_post.dart';

import '../models/local_video_model.dart';
import '../../shared/data/local_video_posts.dart';

class LocalVideoDataSource implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();
    return newVideos;
  }

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
