import 'package:flutter/material.dart';
import 'package:ig_application/home/addStory_screen.dart';
import 'package:ig_application/home/comment_screen.dart';
import 'package:ig_application/home/message_screen.dart';
import 'package:ig_application/home/notification_screen.dart';
import 'package:ig_application/home/share_screen.dart';
import 'package:ig_application/profileandpostdata.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> likedPosts = List.filled(profileimages.length, false);
  List<bool> bookmarkedPosts = List.filled(profileimages.length, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        "Instagram",
        style: TextStyle(
            color: Theme.of(context).colorScheme.primary, fontSize: 40, fontFamily: "Billabong"),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => NotificationScreen()),
            );
          },
          icon: Icon(Icons.favorite_outline),
          iconSize: 25,
        ),
        SizedBox(
          width: 5,
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MessageScreen(),
              ),
            );
          },
          icon: Icon(Icons.maps_ugc_outlined),
          iconSize: 25,
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          _buildStory(),
          _buildPost(),
        ],
      ),
    );
  }

  Widget _buildPost() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: List.generate(
          profileimages.length,
          (index) => Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(profileimages[index]),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    profilenames[index],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Image.network(
                postimages[index],
                fit: BoxFit.cover,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        likedPosts[index] = !likedPosts[index];
                      });
                    },
                    icon: Icon(
                      likedPosts[index]
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: likedPosts[index] ? Colors.pink : Theme.of(context).colorScheme.primary,
                    ),
                    iconSize: 25,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CommentScreen(),
                        ),
                      );
                    },
                    icon: Icon(Icons.chat_bubble_outline),
                    iconSize: 25,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ShareScreen(),
                        ),
                      );
                    },
                    icon: Icon(Icons.send_outlined),
                    iconSize: 25,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        bookmarkedPosts[index] = !bookmarkedPosts[index];
                      });
                    },
                    icon: Icon(
                      bookmarkedPosts[index]
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                      color:
                          bookmarkedPosts[index] ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.primary,
                    ),
                    iconSize: 25,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 10, bottom: 20),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Liked by ",
                              ),
                              TextSpan(
                                text: likedByName[index],
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: " and others",
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            profilenames[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(captionText[index])
                        ],
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          datePost[index],
                          style: TextStyle(
                            color: const Color.fromARGB(255, 136, 134, 134),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStory() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildYourStory(),
          ...List.generate(
            profileimages.length,
            (index) => Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: CircleAvatar(
                      radius: 38,
                      backgroundImage: NetworkImage(
                        profileimages[index],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    profilenames[index],
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildYourStory() {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 7, right: 10),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 38,
                backgroundImage: AssetImage("images/pf_both.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 50),
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.white, width: 2.5),
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => AddstoryScreen(),
                            ),
                            (Route<dynamic> route) => false,
                          );
                        },
                        icon: Icon(Icons.add, color: Colors.white),
                        iconSize: 16,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Your story",
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
