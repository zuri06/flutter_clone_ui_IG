import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig_application/search/explore_screen.dart';
import 'package:ig_application/profileandpostdata.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildSearchAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildSearchAppBar() {
    return AppBar(
      title: SizedBox(
        height: 35,
        child: TextField(
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
        ),
      ),
    );
  }

  Widget _buildBody() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 2,
      ),
      itemCount: postimages.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder: (context) => ExploreScreen(
                  imageprofile: profileimages[index],
                  imagepost: postimages[index],
                  caption: captionText[index],
                  username: profilenames[index],
                  date: datePost[index],
                  likename: likedByName[index],
                ),
              ),
            );
          },
          child: Image.network(
            postimages[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
