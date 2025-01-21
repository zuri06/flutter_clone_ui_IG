
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:ig_application/reels/liked_icon.dart';
import 'package:ig_application/reels/options_screen.dart';
import 'package:video_player/video_player.dart';

class ContentScreen extends StatefulWidget {
  final String? src;

  const ContentScreen({Key? key, this.src}) : super(key: key);

  @override
  _ContentScreenState createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _liked = false;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future<void> initializePlayer() async {
    try {
      // Updated to use `networkUrl` as `network` is deprecated.
      _videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(widget.src!),
      );
      await _videoPlayerController.initialize();

      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: true,
        showControls: false,
        looping: true,
      );
      setState(() {}); // Refresh UI after initialization.
    } catch (e) {
      debugPrint('Error initializing video player: $e');
    }
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose(); // Use null-aware operator to prevent crashes.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand, // Stack fills the entire screen
      children: [
        // Fullscreen Video
        _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
            ? GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    _liked = !_liked; // Toggle like state on double-tap.
                  });
                },
                child: SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover, // Make the video fill the screen
                    child: SizedBox(
                      width: _videoPlayerController.value.size.width,
                      height: _videoPlayerController.value.size.height,
                      child: Chewie(
                        controller: _chewieController!,
                      ),
                    ),
                  ),
                ),
              )
            : Center(
                child:
                    CircularProgressIndicator(), // Show loader while initializing
              ),
        // Overlays
        if (_liked)
          Center(
            child: LikeIcon(), // Like animation when liked
          ),
        OptionsScreen(), // Options overlay
      ],
    );
  }
}
