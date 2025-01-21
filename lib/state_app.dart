import 'package:flutter/material.dart';
import 'package:ig_application/login_page.dart';
import 'package:ig_application/theme/theme_provider.dart';
import 'package:provider/provider.dart';

Widget ProviderStateApp(){
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
    ],
    child: const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}