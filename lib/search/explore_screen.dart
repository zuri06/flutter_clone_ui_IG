import 'package:flutter/material.dart';
import 'package:ig_application/home/comment_screen.dart';
import 'package:ig_application/home/share_screen.dart';

class ExploreScreen extends StatefulWidget {
  final String imageprofile;
  final String imagepost;
  final String caption;
  final String username;
  final String date;
  final String likename;

  const ExploreScreen({
    super.key,
    required this.imageprofile,
    required this.imagepost,
    required this.caption,
    required this.username,
    required this.date,
    required this.likename,
  });

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  bool liked = false;
  bool bookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
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
                      backgroundImage: NetworkImage(widget.imageprofile),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.username,
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
              Image.network(widget.imagepost),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      liked ? Icons.favorite : Icons.favorite_border,
                      color: liked ? Colors.pink : Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () {
                      setState(() {
                        liked = !liked;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.chat_bubble_outline),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CommentScreen(),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ShareScreen())
                      );
                    }, 
                    icon: Icon(Icons.send_outlined)),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      bookmarked ? Icons.bookmark : Icons.bookmark_border,
                      color: bookmarked ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () {
                      setState(() {
                        bookmarked = !bookmarked;
                      });
                    },
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
                                text: widget.likename,
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
                            widget.username,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(widget.caption)
                        ],
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.date,
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
}
