import 'package:flutter/material.dart';
import 'package:ig_application/home/appData.dart';
import 'package:ig_application/profileandpostdata.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar(){
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
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.person_add))
      ],
    );
  }

   Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: GridView.builder(
              physics: ScrollPhysics(), 
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: profileimages.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 33,
                        backgroundImage: NetworkImage(
                          profileimages[index],
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        profilenames[index],
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 60),
          Divider(),
          Container(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  imageApp.length,
                  (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(
                              imageApp[index],
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          nameApp[index],
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}