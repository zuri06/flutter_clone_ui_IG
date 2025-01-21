import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig_application/profile/menu_icon/accessibility.dart';
import 'package:ig_application/profile/menu_icon/igsetting.dart';

class Igsetting extends StatelessWidget {
  const Igsetting({super.key});

  void updateList(String value) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Setting and Privacy",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "Your Account",
                  style: TextStyle(fontFamily: "g", fontSize: 16),
                ),
              ),
              ProfileMenuWidget(
                title: "Account Center",
                icon: CupertinoIcons.person,
                onPress: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Divider(
                    thickness: 5.10,
                    color: Theme.of(context).colorScheme.secondary),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "How You Use Instagram",
                  style: TextStyle(fontFamily: "g", fontSize: 16),
                ),
              ),
              ProfileMenuWidget(
                title: "Notification",
                icon: Icons.notifications_none,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Time Management",
                icon: CupertinoIcons.time,
                onPress: () {},
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Divider(
                      thickness: 5.10,
                      color: Theme.of(context).colorScheme.secondary)),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "What You See ",
                  style: TextStyle(fontFamily: "g", fontSize: 16),
                ),
              ),
              ProfileMenuWidget(
                title: "Favorites",
                icon: CupertinoIcons.star,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Muted Account",
                icon: Icons.notification_important,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Suggested Content",
                icon: Icons.image_search,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Like and Share Counts",
                icon: CupertinoIcons.heart_slash,
                onPress: () {},
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Divider(
                      thickness: 5.10,
                      color: Theme.of(context).colorScheme.secondary)),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "What Can See Your Content",
                  style: TextStyle(fontFamily: "g", fontSize: 16),
                ),
              ),
              ProfileMenuWidget(
                title: "Account Privacy",
                icon: Icons.lock_outline,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Close Friends",
                icon: CupertinoIcons.star_circle,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Blocked",
                icon: Icons.block,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Hide Story And Live",
                icon: Icons.hide_source,
                onPress: () {},
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Divider(
                      thickness: 5.10,
                      color: Theme.of(context).colorScheme.secondary)),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "How Others Can Interact With You",
                  style: TextStyle(fontFamily: "g", fontSize: 16),
                ),
              ),
              ProfileMenuWidget(
                title: "Messages And Story Repiles",
                icon: Icons.messenger_outline,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Tags And Mentions",
                icon: CupertinoIcons.tag,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Comments",
                icon: Icons.comment,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Sharing And Remixes",
                icon: CupertinoIcons.share_up,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Restricted",
                icon: Icons.warning,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Limit Interactions",
                icon: CupertinoIcons.question_diamond,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Hidden Words",
                icon: Icons.font_download,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Follow And Invite Friends",
                icon: CupertinoIcons.person_add_solid,
                onPress: () {},
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Divider(
                      thickness: 5.10,
                      color: Theme.of(context).colorScheme.secondary)),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "Your App And Media",
                  style: TextStyle(fontFamily: "g", fontSize: 16),
                ),
              ),
              ProfileMenuWidget(
                title: "Device Permissions",
                icon: Icons.phone_android,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Archiving and Downloading",
                icon: Icons.download,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Accessibility",
                icon: Icons.accessibility_outlined,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Asscessbility(),
                    ),
                  );
                },
              ),
              ProfileMenuWidget(
                title: "Language",
                icon: Icons.language,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Data usage and media quality",
                icon: Icons.data_exploration_outlined,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Website permissions",
                icon: Icons.web_outlined,
                onPress: () {},
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Divider(
                      thickness: 5.10,
                      color: Theme.of(context).colorScheme.secondary)),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "For Famillies",
                  style: TextStyle(fontFamily: "g", fontSize: 16),
                ),
              ),
              ProfileMenuWidget(
                title: "Supervision",
                icon: CupertinoIcons.person_3_fill,
                onPress: () {},
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Divider(
                      thickness: 5.10,
                      color: Theme.of(context).colorScheme.secondary)),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "For Professionals",
                  style: TextStyle(fontFamily: "g", fontSize: 16),
                ),
              ),
              ProfileMenuWidget(
                title: "Account type and tools",
                icon: Icons.data_thresholding_outlined,
                onPress: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: Divider(
                    thickness: 5.10,
                    color: Theme.of(context).colorScheme.secondary),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "Your Orders and Fundraisers",
                  style: TextStyle(
                    fontFamily: "g",
                    fontSize: 16,
                  ),
                ),
              ),
              ProfileMenuWidget(
                title: "Orders and Payments",
                icon: Icons.payment_rounded,
                onPress: () {},
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: Divider(
                      thickness: 5.10,
                      color: Theme.of(context).colorScheme.secondary)),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "More Info and Supports",
                  style: TextStyle(fontFamily: "g", fontSize: 16),
                ),
              ),
              ProfileMenuWidget(
                title: "Help",
                icon: Icons.help_center,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Account Status",
                icon: Icons.person,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "About",
                icon: Icons.headphones_outlined,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
