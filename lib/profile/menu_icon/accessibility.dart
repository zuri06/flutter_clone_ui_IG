import 'package:flutter/material.dart';
import 'package:ig_application/profile/menu_icon/igsetting.dart';
import 'package:ig_application/profile/menu_icon/settings_page.dart';

class Asscessbility extends StatelessWidget {
  const Asscessbility({super.key});

  void updateList(String value) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Accessibility",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              ProfileMenuWidget(
                title: "Caption",
                icon: Icons.closed_caption,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "Dark Mode",
                icon: Icons.dark_mode,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
