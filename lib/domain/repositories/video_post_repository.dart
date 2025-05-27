

import 'package:tiktok_clon/domain/entities/video_post.dart';

abstract class VideoPostRepository {



Future<List<VideoPost>> getFavoriteVideoByUser( String userID);
Future<List<VideoPost>> getTrendingVideoPosts(int page);


}