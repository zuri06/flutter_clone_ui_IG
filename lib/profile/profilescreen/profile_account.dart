import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig_application/profile/images_data.dart';
import 'package:ig_application/profile/menu_icon/ig_data.dart';
import 'package:ig_application/profile/profilescreen/edit_profile_screen.dart';
import 'package:ig_application/profile/profilescreen/reels_icon/create_reel.dart';
import 'package:ig_application/profile/profilescreen/share_profile_screen.dart';

class ProfileScreenApp extends StatefulWidget {
  const ProfileScreenApp({super.key});

  @override
  State<ProfileScreenApp> createState() => _ProfileScreenAppState();
}

class _ProfileScreenAppState extends State<ProfileScreenApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 60,
          title: const Padding(
            padding: EdgeInsets.only(right: 5, top: 2),
            child: Text(
              "neth_thavnan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => const CreateReel()));
              },
              icon: const Padding(
                padding: EdgeInsets.only(top: 3, left: 5),
                child: Icon(
                  Icons.add_box_outlined,
                  size: 26,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => const Igsetting()));
              },
              icon: const Icon(Icons.menu_rounded),
              iconSize: 31,
            )
          ],
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            child: ClipOval(
                              child: SizedBox(
                                width: 80,
                                height: 80,
                                child: Image.asset(
                                  'images/nan.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 25),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 60),
                                  Text(
                                    '30',
                                    style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 70),
                                  Text(
                                    '50',
                                    style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 15),
                                  Text(
                                    'Posts',
                                    style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    'Followers',
                                    style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    'Following',
                                    style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 3),
                            Text(
                              'Neth Thavnan',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 1),
                            Text(
                              '-_-',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(height: 50),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 1, left: 10, bottom: 10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const EditProfileScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Theme.of(context).colorScheme.secondary),
                                  ),
                                  child: const Text(
                                    'Edit profile',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5), // Add some spacing between buttons
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 2, left: 2, bottom: 10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const ShareProfile(),
                                    ),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Text(
                                    'Share profile',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Padding(
                            padding: const EdgeInsets.only(right: 10, left: 1, bottom: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.person_add_outlined,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: double.infinity,
                        height: 30,
                        child: TabBar(
                          unselectedLabelColor: Colors.grey,
                          labelColor: Theme.of(context).colorScheme.primary,
                          indicatorColor: Theme.of(context).colorScheme.primary,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Icon(
                              Icons.grid_on,
                            ),
                            Icon(
                              Icons.video_collection_rounded,
                            ),
                            Icon(
                              Icons.person_pin_rounded,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: [
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                      ),
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: ImagesData.imageUrls.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.zero,
                          child: Image.asset(
                            ImagesData.imageUrls[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: ImagesData.videoUrls.length,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          child: const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 22),
                                child: Text(
                                  'Share a moment with the world',
                                  style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Create your first Reel',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 0, 200, 255),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: ImagesData.personDetails.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 130, bottom: 5),
                              child: Container(
                                alignment: Alignment.center,
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Icon(
                                    Icons.person_pin_rounded,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.only(top: 4, bottom: 10),
                              child: Text(
                                'Photos and video of you',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "When people tag you in photo and video,",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  Text(
                                    "they'll appear here.",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey.shade600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
