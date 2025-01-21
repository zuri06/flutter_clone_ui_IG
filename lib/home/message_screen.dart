import 'package:flutter/material.dart';
import 'package:ig_application/profileandpostdata.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class User {
  final String name;
  final String imageUrl;

  User({required this.name, required this.imageUrl});
}

List<User> users = [
  User(name: profilenames[0], imageUrl: profileimages[0]),
  User(name: profilenames[1], imageUrl: profileimages[1]),
  User(name: profilenames[2], imageUrl: profileimages[2]),
  User(name: profilenames[3], imageUrl: profileimages[3]),
  User(name: profilenames[4], imageUrl: profileimages[4]),
  User(name: profilenames[5], imageUrl: profileimages[5]),
  User(name: profilenames[6], imageUrl: profileimages[6]),
  User(name: profilenames[7], imageUrl: profileimages[7]),
  User(name: profilenames[8], imageUrl: profileimages[8]),
  User(name: profilenames[9], imageUrl: profileimages[9]),
  User(name: profilenames[10], imageUrl: profileimages[10]),
];

class _MessageScreenState extends State<MessageScreen> {
  TextEditingController _searchController = TextEditingController();
  List<User> filteredUsers = users;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      _filterMessages(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterMessages(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredUsers = users;
      });
    } else {
      setState(() {
        filteredUsers = users
            .where((user) => user.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "___both.2ur1___",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.border_color_outlined)),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          _buildSearch(),
          _buildStory(),
          _buildMessage(),
        ],
      ),
    );
  }

  Widget _buildMessage() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Text(
                  "Messages",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Text(
                  "Requests",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 16),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: filteredUsers.length,
            itemBuilder: (context, index) {
              return _buildMessageItem(index);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMessageItem(int index) {
    User user = filteredUsers[index]; // Get the user from filteredUsers
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pink, width: 2),
              borderRadius: BorderRadius.circular(30),
            ),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(user.imageUrl), // Use user's imageUrl
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name, // Use user's name
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              Text(
                dateChat[index], // Assuming dateChat is still relevant
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined), color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildStory() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(top: 15),
      child: Row(
        children: [
          _buildYourStory(),
          ...List.generate(
            profileimages.length,
            (index) => Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 33,
                    backgroundImage: NetworkImage(profileimages[index]),
                  ),
                  SizedBox(height: 8),
                  Text(
                    profilenames[index],
                    style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.primary,),
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
      padding: EdgeInsets.only(left: 10, top: 5, right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 33,
            backgroundImage: AssetImage("images/pf_both.jpg"),
          ),
          SizedBox(height: 12),
          Text(
            "Your note",
            style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }

  Widget _buildSearch() {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: "Search",
        hintStyle: TextStyle(color: const Color.fromARGB(204, 127, 126, 126)),
        contentPadding: EdgeInsets.all(0),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: const Color.fromARGB(60, 182, 178, 178),
        filled: true,
      ),
    );
  }
}