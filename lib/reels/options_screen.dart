import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Top empty space for alignment
          SizedBox(),

          // Bottom section
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Left side: Avatar, username, caption, and audio
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // User info: Avatar + Username + Follow Button
                    Row(
                      children: [
                        CircleAvatar(
                          child:
                              Icon(Icons.person, size: 18, color: Colors.white),
                          radius: 16,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '@real_flutter_dev',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Follow',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),

                    // Caption
                    Text(
                      'Building beautiful UIs with Flutter 💙',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),

                    // Music info
                    Row(
                      children: [
                        Icon(Icons.music_note, size: 15, color: Colors.white),
                        Expanded(
                          child: Text(
                            'Original Audio - Flutter Dev Beats 🎵',
                            style: TextStyle(color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Right side: Action buttons (Likes, Comments, Share, More)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite_outline, color: Colors.white, size: 28),
                  SizedBox(height: 4),
                  Text('1.2M',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                  SizedBox(height: 16),
                  Icon(Icons.comment_rounded, color: Colors.white, size: 28),
                  SizedBox(height: 4),
                  Text('4.3K',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                  SizedBox(height: 16),
                  Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: Icon(Icons.send, color: Colors.white, size: 28),
                  ),
                  SizedBox(height: 50),
                  Icon(Icons.more_vert, color: Colors.white, size: 28),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

