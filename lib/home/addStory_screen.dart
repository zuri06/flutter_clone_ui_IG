import 'package:flutter/material.dart';
import 'package:ig_application/add/image_data.dart';
import 'package:ig_application/main_screen.dart';

class AddstoryScreen extends StatefulWidget {
  const AddstoryScreen({super.key});

  @override
  State<AddstoryScreen> createState() => _AddstoryScreenState();
}

class _AddstoryScreenState extends State<AddstoryScreen> {
  String mainImageUrl = "https://images.deliveryhero.io/image/fd-kh/LH/w0bv-hero.jpg?width=480&height=360&quality=450";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => MainScreen(),
              ),
              (Route<dynamic> route) => false,
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.arrow_back_rounded,
              size: 25,
            ),
          ),
        ),
        title: Text(
            "Add to story",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
        ),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.settings)
                ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 450,
              child: Image.network(
                mainImageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 0),
            Container(
              width: double.infinity,
              height: 40,
              color: Theme.of(context).colorScheme.surface,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    "Recent",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt),
                  )
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
              ),
              itemCount: imageList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      mainImageUrl = imageList[index];
                    });
                  },
                  child: Image.network(imageList[index], fit: BoxFit.cover),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}