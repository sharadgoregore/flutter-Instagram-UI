import 'dart:io';

import 'package:flutter/material.dart';
import 'package:insta/Widgets/Image_picker.dart';

class Profile extends StatefulWidget {
  static const String routeName = 'profile';
  @override
  _ProfileState createState() => _ProfileState();
}

// ignore: unused_element
File _uimage;

void _authimage(File image) {
  _uimage = image;
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List tabData = [
    Icon(Icons.image),
    Icon(Icons.phone_android),
  ];

  @override
  void initState() {
    _tabController = new TabController(length: 2, initialIndex: 0, vsync: this)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("User"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Imagepic(_authimage),
                    )
                    /*  Container(
                      height: 120,
                      width: 200,
                      child: CircleAvatar(
                        radius: 150,
                        backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2015/03/26/09/54/people-690547__340.jpg"),
                      ),
                    ), */
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("  1\nPost"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("      0\nfollowers"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("    2\nFollowing"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 180,
                        child: RaisedButton(
                            child: Text("Edit Profile"), onPressed: () {}))
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180, top: 10),
              child: Column(
                children: [
                  Text("Sharad D Gore"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TabBar(
                      labelColor: Colors.black,
                      //labelStyle: TitleFontSize,

                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      controller: _tabController,
                      tabs: tabData
                          .map(
                            (e) => Tab(child: e),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 600,
              child: TabBarView(controller: _tabController, children: <Widget>[
                Container(
                    height: 250,
                    padding: EdgeInsets.all(16.0),
                    child: GridView.builder(
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0),
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                            'https://youngicee.com/wp-content/uploads/2021/03/beautiful_natural_scenery_04_hd_pictures_166229-0.jpg');
                      },
                    )),
                Container(
                  child: Text("Tab 2"),
                ),
              ]),
            ),
          ]),
        ));
  }
}
