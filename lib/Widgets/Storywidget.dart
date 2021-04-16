import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Storywiget extends StatelessWidget {
  List <dynamic> image = [
    {"images": "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823__340.jpg","username":"MAxx"},
    {"images":"https://wallpapercave.com/wp/wp2665205.jpg","username":"Ammi"},
    {"images":"https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823__340.jpg","username":"Piter"},
    {"images":"https://cdn.pixabay.com/photo/2015/09/09/16/05/forest-931706__340.jpg","username":"Sam"},
     {"images":"https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__340.jpg","username":"Sharad"},
    {"images":"https://cdn.pixabay.com/photo/2016/01/08/11/57/butterflies-1127666__340.jpg","username":"Akshay"},
    {"images":"https://cdn.pixabay.com/photo/2013/07/18/10/56/railroad-163518__340.jpg","username":"Vinod"},
    {"images":"https://cdn.pixabay.com/photo/2018/02/08/22/27/flower-3140492__340.jpg","username":"ajay"},
    {"images":"https://cdn.pixabay.com/photo/2015/01/28/23/35/hills-615429__340.jpg","username":"umesh"},
    {"images":"https://wallpapercave.com/wp/wp2665205.jpg","username":"Omkar"},

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF9B2282), Color(0xFFEEA863)])),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    '${image[index]["images"]}',
                                  ),
                                  fit: BoxFit.cover)),
                                  
                          /* child: Image.network("https://wallpapercave.com/wp/NGD9aMj.jpg",fit:BoxFit.fill,), */
                        ),
                      ),
                    ),
                    SizedBox(height:10),
                    Text("${image[index]["username"]}")
                  ],
                ),
              );
            }),
          ),
        ),
    
      ],
    );
  }
}
