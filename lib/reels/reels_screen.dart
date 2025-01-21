import 'package:card_swiper/card_swiper.dart';
import 'package:ig_application/reels/content_screen.dart';
import 'package:flutter/material.dart';

class ReelsScreen extends StatefulWidget {
  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  final List<String> videos = [
    'https://videos.pexels.com/video-files/30115965/12915981_360_640_25fps.mp4',
    'https://videos.pexels.com/video-files/30156032/12931111_360_640_30fps.mp4',
    'https://videos.pexels.com/video-files/29900748/12834749_360_640_30fps.mp4',
    'https://videos.pexels.com/video-files/10200313/10200313-sd_360_640_25fps.mp4',
    'https://videos.pexels.com/video-files/30012659/12876563_360_640_60fps.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // Full-screen Swiper for videos
            Positioned.fill(
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ContentScreen(
                    src: videos[index],
                  );
                },
                itemCount: videos.length,
                scrollDirection: Axis.vertical,
              ),
            ),
            // Header with title and camera icon
            Positioned(
              top: 8.0,
              left: 8.0,
              right: 8.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reels',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white, // Text color for contrast
                    ),
                  ),
                  Tooltip(
                    message: 'Open Camera',
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white, // Icon color for contrast
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
