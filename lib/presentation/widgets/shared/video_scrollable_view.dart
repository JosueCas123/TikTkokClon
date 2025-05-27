import 'package:flutter/material.dart';
import 'package:tiktok_clon/domain/entities/video_post.dart';
import 'package:tiktok_clon/presentation/widgets/shared/video_buttons.dart';
import 'package:tiktok_clon/presentation/widgets/video/fullscreen_player.dart';
import 'package:tiktok_clon/shared/data/local_video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos ;

  const VideoScrollableView({
    super.key,
    required this.videos,
    });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost video = videos[index];
        return Stack(
          children: [
            // Video Player Widget
            SizedBox.expand(
              child:FullscreenPlayer(
                caption: video.caption,
                videoUrl: video.videoUrl,
              )
            ),
           Positioned(
            bottom: 40,
            right:20,
            child: VideoButtons(video: video)),
       
            // Overlay for video controls or other widgets can be added here
          ],
        );
      },
    );
  }
}
