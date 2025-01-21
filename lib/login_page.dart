import 'package:flutter/material.dart';
import 'package:ig_application/main_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final emailController = TextEditingController();
final pwController = TextEditingController();
bool _hidePassword = true;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 41, 42),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                "https://www.freepnglogos.com/uploads/instagram-icon-png/instagram-logo-download-computer-neon-instagram-icons-image-23.png",
                height: 65,
              ),
            ),
            const SizedBox(height: 60),
            TextField(
              controller: emailController,
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade500),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade500),
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: const Color.fromARGB(133, 63, 61, 61),
                hintText: "Enter Email",
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: pwController,
              obscureText: _hidePassword,
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade500),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade500),
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: const Color.fromARGB(133, 63, 61, 61),
                hintText: "Enter Password",
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                debugPrint(emailController.text);
                debugPrint(pwController.text);
                if (emailController.text == "aa" && pwController.text == "aa") {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => MainScreen(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Login Failed"),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue.shade800,
                minimumSize: Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Forgotten Password?",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
