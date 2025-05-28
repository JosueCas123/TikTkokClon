

import 'package:tiktok_clon/domain/datasources/video_post_datasource.dart';
import 'package:tiktok_clon/domain/entities/video_post.dart';
import 'package:tiktok_clon/infrastructure/models/local_video_model.dart';
import 'package:tiktok_clon/shared/data/local_video_post.dart';

class LocalVideoDatasource implements VideoPostDatasource {


  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID) async {
    // Simulate fetching favorite videos for a user
    throw UnimplementedError('This method is not implemented yet.');
  }

  @override
  Future<List<VideoPost>> getTrendingVideoPosts(int page) async {
    // Simulate fetching trending video posts
     final List<VideoPost> newVideos = videoPosts.map( 
      ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();
    return newVideos;
  }
}