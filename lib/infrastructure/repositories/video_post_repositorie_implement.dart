


import 'package:tiktok_clon/domain/datasources/video_post_datasource.dart';
import 'package:tiktok_clon/domain/entities/video_post.dart';
import 'package:tiktok_clon/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {

  final  VideoPostDatasource videoPostDatasource;

  VideoPostsRepositoryImpl({required this.videoPostDatasource});
  
  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID) {
    // Simulate fetching favorite videos for a user
    throw UnimplementedError('This method is not implemented yet.');
  }

  @override
  Future<List<VideoPost>> getTrendingVideoPosts(int page) {
    
    return videoPostDatasource.getTrendingVideoPosts(page);

  }

}