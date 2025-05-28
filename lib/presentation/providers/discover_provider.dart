import 'package:flutter/material.dart';
import 'package:tiktok_clon/domain/entities/video_post.dart';
import 'package:tiktok_clon/domain/repositories/video_post_repository.dart';


class DiscoverProvider extends ChangeNotifier {
  //todo Repository Datasource
  final VideoPostRepository videoPostRepository;

  DiscoverProvider({required this.videoPostRepository});

  bool initialLoading = true;
  final List<VideoPost> videos = [];

  Future<void> loadNexPage() async {
    // Simulate a network request
    // await Future.delayed(const Duration(seconds: 2));
    // Simulate loading data
    //  final List<VideoPost> newVideos = videoPosts.map(
    //   ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    // ).toList();

    final newVideos = await videoPostRepository.getTrendingVideoPosts(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
