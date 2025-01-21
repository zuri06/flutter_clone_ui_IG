import 'package:flutter/material.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildnavigation(),
    );
  }

  AppBar _buildAppBar(){
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Text(
          "Comments",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildBody(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No comments yet",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Start the conversation.",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildnavigation(){
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          SizedBox(width: 20),
          CircleAvatar(
            backgroundImage: AssetImage("images/pf_both.jpg"),
            radius: 20,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Add a comment...',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_upward), color: Colors.blue,),
        ],
      ),
    );
  }
}