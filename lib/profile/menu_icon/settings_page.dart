import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig_application/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            "Dark Mode",
            style: TextStyle(
              fontFamily: "g",
              fontSize: 25,
            ),
          ),
        ),
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Theme.of(context).colorScheme.secondary,
            ),
            margin: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 20,
            ),
            padding: const EdgeInsets.all(5),
            child: ListTile(
              title: const Text(
                "Dark Mode",
                style: TextStyle(
                  fontFamily: "g",
                  fontSize: 18,
                ),
              ),
              trailing: CupertinoSwitch(
                onChanged: (value) =>
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(),
                value: Provider.of<ThemeProvider>(context, listen: false)
                    .isDarkMode,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
