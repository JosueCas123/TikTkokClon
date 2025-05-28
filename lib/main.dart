import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_clon/infrastructure/datasources/local_video_datasource_implement.dart';
import 'package:tiktok_clon/infrastructure/repositories/video_post_repositorie_implement.dart';
import 'package:tiktok_clon/presentation/screen/discover/discover_screen.dart';
import 'package:tiktok_clon/presentation/providers/discover_provider.dart';
import 'package:tiktok_clon/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final videoPostReposirtory = VideoPostsRepositoryImpl(videoPostDatasource: LocalVideoDatasource());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider(videoPostRepository: videoPostReposirtory )..loadNexPage(),
        ),
      ],
      child: MaterialApp(
        theme: AppTheme().getTheme(),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const DiscoverScreen(),
      ),
    );
  }
}