import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:insta/Screens/ChatPage.dart';
import 'package:insta/Screens/Profile_screen.dart';
import 'package:insta/Widgets/Storywidget.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

final List<dynamic> image = [
  {
    "images":
        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
    "username": "MAxx",
    "storyimage": "https://cdn.wallpapersafari.com/81/9/Jr8vHT.jpg",
    "Comments": "liked by suraj and 126 others"
  },
  {
    "images":
        "https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014__340.jpg",
    "username": "Ammi",
    "storyimage":
        "https://i.pinimg.com/originals/15/be/33/15be33d514f99d4cb6bc453e405cbb6d.jpg",
    "Comments": "liked by max and 106 others"
  },
  {
    "images":
        "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823__340.jpg",
    "username": "Piter",
    "storyimage": "https://wallpapercave.com/wp/s0H9E3Z.jpg",
    "Comments": "liked by Ajay and 226 others"
  },
  {
    "images":
        "https://cdn.pixabay.com/photo/2015/09/09/16/05/forest-931706__340.jpg",
    "username": "Sam",
    "storyimage":
        "https://images.pexels.com/photos/210186/pexels-photo-210186.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "Comments": "liked by sumit and 26 others"
  },
  {
    "images":
        "https://cdn.pixabay.com/photo/2015/09/09/16/05/forest-931706__340.jpg",
    "username": "Sam",
    "storyimage":
        "https://webneel.com/wallpaper/sites/default/files/images/08-2018/1-nature-wallpaper-grass-hd.jpg",
    "Comments": "liked by sharad and 106 others"
  },
];

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  onPressed: () {}),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  onPressed: () {}),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(
                    Icons.slideshow,
                    size: 30,
                  ),
                  onPressed: () {}),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                  onPressed: () {}),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Profile.routeName);
                  }),
              label: ''),
        ],
      ),
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt_outlined,
          size: 35,
        ),
        title: Container(
          height: 50,
          width:220,
          child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/print-204012264.jpg'),)),
        actions: [
        
          IconButton(
              icon: Image.network(
                "https://i.pinimg.com/564x/81/61/11/8161118286008dc972953ec78503740b.jpg",
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(Chatpage.routename);
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Storywiget(),
          SizedBox(height: 10),
          // Divider(color: Colors.grey,),
          Container(
            height: 480,
            child: ListView.builder(
                padding: const EdgeInsets.all(3),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage('${image[index]["images"]}'),
                          ),
                          title: Text(
                            "${image[index]["username"]}",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 21),
                          ),
                          trailing: Icon(Icons.more_vert),
                        ),
                        Image.network(
                          '${image[index]["storyimage"]}',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.favorite_border, size: 25),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Icon(
                                    Icons.sms,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Icon(Icons.send, size: 25),
                                ],
                              ),
                              Icon(Icons.bookmark_border, size: 30)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          child: Text(
                            '${image[index]['Comments']}',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(.8)),
                          ),
                        ),
                       
                      ],
                    ),
                    
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
