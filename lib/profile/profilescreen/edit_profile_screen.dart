import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig_application/profile/profilescreen/profile_account.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => const ProfileScreenApp()));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
        ),
        title: const Text(
          "Edit profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(color: Colors.grey),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      image: const DecorationImage(
                        image: AssetImage('images/nan.jpg'),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        color: Colors.grey.shade900,
                        width: 1.0,
                      ),
                    ),
                    child: const Icon(
                      Icons.face,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Edit picture or avatar",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: Color.fromARGB(255, 0, 200, 255)),
            ),
            _buildProfileField("Name", "Enter your name"),
            _buildProfileField("Username", "Enter your username"),
            _buildProfileField("Pronouns", "Enter your pronouns"),
            _buildProfileField("Bio", "Add your bio"),
            _buildProfileField("Links", "Add a link"),
            _buildProfileField("Banners", "Add banners"),
            _buildProfileFieldWithToggle("Show Threads badge"),
            _buildProfileField("Gender", "Enter your gender"),
            _buildClickableField("Switch to professional account"),
            _buildClickableField("Personal information settings"),
            _buildClickableField("Show your profile is verified"),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileField(String label, String hint) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10, bottom: 10),
              child: Text(
                label,
              ),
            ),
            const SizedBox(width: 20),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
        const Divider(color: Colors.grey),
      ],
    );
  }

  Widget _buildProfileFieldWithToggle(String label) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10, bottom: 10),
              child: Text(
                label,
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.toggle_off,
                color: Colors.grey,
                size: 40,
              ),
            ),
          ],
        ),
        const Divider(color: Colors.grey),
      ],
    );
  }

  Widget _buildClickableField(String label) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10, bottom: 10),
              child: Text(
                label,
                style: const TextStyle(color: Color.fromARGB(255, 0, 200, 255)),
              ),
            ),
          ],
        ),
        const Divider(color: Colors.grey),
      ],
    );
  }
}
