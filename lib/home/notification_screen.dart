import 'package:flutter/material.dart';
import 'package:ig_application/profileandpostdata.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 10),
            child: Text(
              "Last 30 Days",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: List.generate(
                profileimages.length,
                (index) => Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            profileimages[index],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: profilenames[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              TextSpan(
                                text: ' ${notiMessage[index]}',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
