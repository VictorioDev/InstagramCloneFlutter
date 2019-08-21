import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          brightness: Brightness.light,
          backgroundColor: new Color(0xfff8faf8),
          leading: Icon(
            Icons.camera_alt,
            size: 30,
          ),
          title: Container(
              margin: EdgeInsets.only(top: 5),
              child: Image.asset(
                "graphics/instagram-logo-17.png",
                width: 100,
                height: 100,
              )),
          centerTitle: false,
          actions: <Widget>[
            Icon(
              Icons.live_tv,
              size: 30,
            ),
            SizedBox(width: 20),
            Transform.rotate(
              angle: -40 * (pi / 180),
              child: Icon(
                Icons.send,
                size: 30,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 100,
              child: _buildStories(),
            ),
            _buildFeed()
          ],
        ));
  }

  Widget _buildStories() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      height: 50,
                      width: 50,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          border: Border.all(width: 1, color: Colors.black),
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://scontent.fmii5-1.fna.fbcdn.net/v/t1.0-9/51117010_2007582359360403_6868260865083179008_n.jpg?_nc_cat=110&_nc_oc=AQktil2v0vJ8uM4W-9NKAWofcD5a7l1cJv3U_02e4tz0yl5czblNLcfdzuCpLEWkbbs&_nc_ht=scontent.fmii5-1.fna&oh=4f58761c559efbbe2096a42f24fa8608&oe=5DA95CBD")))),
                  Positioned(
                    right: 10,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  )
                ],
              ),
              Text("Victorio")
            ],
          );
        }

        return Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                height: 50,
                width: 50,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(width: 1, color: Colors.black),
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://scontent.fmii5-1.fna.fbcdn.net/v/t1.0-9/51117010_2007582359360403_6868260865083179008_n.jpg?_nc_cat=110&_nc_oc=AQktil2v0vJ8uM4W-9NKAWofcD5a7l1cJv3U_02e4tz0yl5czblNLcfdzuCpLEWkbbs&_nc_ht=scontent.fmii5-1.fna&oh=4f58761c559efbbe2096a42f24fa8608&oe=5DA95CBD")))),
            Text("Teste ${index}")
          ],
        );
      },
      itemCount: 10,
    );
  }

  Widget _buildFeed() {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 30,
                            width: 30,
                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        "https://scontent.fmii5-1.fna.fbcdn.net/v/t1.0-9/51117010_2007582359360403_6868260865083179008_n.jpg?_nc_cat=110&_nc_oc=AQktil2v0vJ8uM4W-9NKAWofcD5a7l1cJv3U_02e4tz0yl5czblNLcfdzuCpLEWkbbs&_nc_ht=scontent.fmii5-1.fna&oh=4f58761c559efbbe2096a42f24fa8608&oe=5DA95CBD")))),
                        Text("victorio.z")
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.more_vert),
                    )
                  ],
                ),
                Image.network(
                    "https://i.pinimg.com/564x/52/72/b8/5272b8e7535b1be2f9321b67f9c7682f.jpg"),
                Row(
                  children: <Widget>[],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
