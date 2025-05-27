import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clon/config/helpers/human_formtas.dart';
import 'package:tiktok_clon/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({required this.video, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       _CustomButton(value: video.likes, iconData:Icons.favorite, iconColor: Colors.red),
       const SizedBox(height: 20),
       _CustomButton(value: video.views, iconData:Icons.remove_red_eye_outlined, ),
        const SizedBox(height: 20),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 10),  
          child: _CustomButton(value: 0, iconData: Icons.play_circle_outline)),
      ],
    );
  }
}

class _CustomButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;


  const _CustomButton({
    required this.value,
    required this.iconData,
     iconColor,
    super.key}): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
          onPressed: () {},
          icon:  Icon(iconData, color: color)),
          if (value > 0)
      Text(HumanFormtas.humanReadableNumber(value.toDouble()),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          )),
      
    ],
    );
  }
}
