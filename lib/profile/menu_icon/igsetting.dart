import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
  });
  final String title;
  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: SizedBox(
        height: 40,
        width: 40,
        child: Icon(
          icon,
          size: 25,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: "g",
          fontSize: 17,
        ),
      ),
      trailing: SizedBox(
        width: 30,
        height: 30,
        child: const Icon(
          CupertinoIcons.chevron_forward,
          size: 20,
        ),
      ),
    );
  }
}
