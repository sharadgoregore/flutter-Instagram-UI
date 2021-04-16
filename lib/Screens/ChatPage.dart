import 'package:flutter/material.dart';
import 'package:insta/Models/Messagedecoration.dart';

class Chatpage extends StatefulWidget {
  static const String routename = 'Chatpage';
  @override
  _ChatpageState createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: chats.length,
                itemBuilder: (context, int index) {
                  final recentChat = chats[index];
                  return Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(recentChat.avatar),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  recentChat.sender.name,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  recentChat.text,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.green,
                                child: Text(
                                  recentChat.unreadmessage.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                recentChat.time,
                                //style: MyTheme.bodyTextTime,
                              )
                            ],
                          ),
                        ],
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
