import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig_application/profile/profilescreen/reels_icon/create_reel_setting.dart';

class CreateReel extends StatefulWidget {
  const CreateReel({super.key});

  @override
  State<CreateReel> createState() => _CreateReelState();
}

class _CreateReelState extends State<CreateReel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: const Text(
          "Create",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            fontFamily: "g",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 1.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade900)),
              ),
              CreateReelSetting(
                title: "Reel",
                icon: Icons.video_collection,
                onPress: () {},
              ),
              Container(
                height: 1.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade900)),
              ),
              CreateReelSetting(
                title: "Post",
                icon: Icons.grid_on_outlined,
                onPress: () {},
              ),
              Container(
                height: 1.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade900)),
              ),
              CreateReelSetting(
                title: "Story",
                icon: Icons.data_saver_on_rounded,
                onPress: () {},
              ),
              Container(
                height: 1.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade900)),
              ),
              CreateReelSetting(
                title: "Story highlight",
                icon: Icons.favorite_border_rounded,
                onPress: () {},
              ),
              Container(
                height: 1.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade900)),
              ),
              CreateReelSetting(
                title: "Live",
                icon: Icons.sensors_rounded,
                onPress: () {},
              ),
              Container(
                height: 1.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade900)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
