import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig_application/profile/profilescreen/profile_account.dart';

class ShareProfile extends StatefulWidget {
  const ShareProfile({super.key});

  @override
  State<ShareProfile> createState() => _ShareProfileState();
}

class _ShareProfileState extends State<ShareProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: AppBar(
          title: Container(
            alignment: Alignment.center,
            height: 25,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              ),
            ),
            child: const Text(
              "COLOR",
              style: TextStyle(
                fontSize: 12,
                fontFamily: "g",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_scanner,
                size: 22,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 130,
          ),
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: const DecorationImage(
                  image: AssetImage("images/qr.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey.shade900,
                  width: 2,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey.shade900,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        const Icon(
                          Icons.file_upload_outlined,
                        ),
                        const Text(
                          "Share profile",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "g",
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 9, left: 9),
                    child: Container(
                      height: 70,
                      width: 95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.grey.shade900,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          const Icon(
                            Icons.link_rounded,
                          ),
                          const Text(
                            "Copy link",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "g",
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey.shade900,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        const Icon(
                          Icons.download_rounded,
                        ),
                        const Text(
                          "Download",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "g",
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
