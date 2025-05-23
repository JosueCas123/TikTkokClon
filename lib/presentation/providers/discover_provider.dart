import 'package:flutter/material.dart';
import 'package:tiktok_clon/domain/entities/video_post.dart';
import 'package:tiktok_clon/infrastructure/models/local_video_model.dart';
import 'package:tiktok_clon/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {

  //todo Repository Datasource
  bool initialLoading = true;
  final List<VideoPost> videos = [];

  Future<void> loadNexPage() async {
    // Simulate a network request
    await Future.delayed(const Duration(seconds: 2));
    // Simulate loading data
     final List<VideoPost> newVideos = videoPosts.map( 
      ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
