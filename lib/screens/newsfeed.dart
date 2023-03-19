import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psychbeing_app/screens/addnewsfeed.dart';
import 'package:psychbeing_app/screens/futureadds.dart';
import 'package:psychbeing_app/screens/meditation.dart';
import 'package:psychbeing_app/screens/oneononchat.dart';

class Newsfeedpage extends StatefulWidget {
  const Newsfeedpage({Key? key}) : super(key: key);

  @override
  State<Newsfeedpage> createState() => _NewsfeedpageState();
}

class _NewsfeedpageState extends State<Newsfeedpage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 220, 57, 1),
        title: Text(
          "PsychBeing",
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.camera_enhance_sharp), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Get.to(() => AddNewsFeed());
              }),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            //Top Section
            ListTile(
              title: Text('@latifaNoor'),
              //END OF LISTtILE
            ),
            // IMAGE
            Container(
              width: Get.width,
              height: 300,
              margin: EdgeInsets.only(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("images/image3.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          color: Colors.black87,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Colors.black87,
                        )),
                  ],
                ))
              ],
            ),
          ],
        ),
      ),

      //BOTTOM NAVBAR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(205, 220, 57, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          //Respond to item press.

          //Respond to item press.
          if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Newsfeedpage()),
            );
          } else if (value == 1) {
            Get.to(() => Newsfeedpage());
          }

          if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OneonOnechat()),
            );
          } else if (value == 2) {
            Get.to(() => OneonOnechat());
          }
          if (value == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Meditation()),
            );
          } else if (value == 3) {
            Get.to(() => Meditation());
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Feed"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded), label: "Group"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded),
              label: "Safe space"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "Relax"),
        ],
      ),
    );
  }
}
