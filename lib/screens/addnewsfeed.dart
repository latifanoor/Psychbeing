import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psychbeing_app/controllers/authcontroller.dart';

class AddNewsFeed extends StatefulWidget {
  const AddNewsFeed({super.key});

  @override
  State<AddNewsFeed> createState() => _AddNewsFeedState();
}

class _AddNewsFeedState extends State<AddNewsFeed> {
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 220, 57, 1),
        title: Text("UpDate Post"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text("@latifanoor"),
            SizedBox(height: 20),
            Container(
              height: Get.height * .3,
              width: Get.width,
              decoration: BoxDecoration(
                  image: image == null
                      ? DecorationImage(image: AssetImage("images/image1.jpg"))
                      : DecorationImage(image: NetworkImage(""))),
            ),
            SizedBox(height: 20),

            //text input
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Write you comment",
                  fillColor: Colors.white70),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            //SUBMIT BUTTON
            Container(
              width: Get.width,
              height: 45,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Post",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                ),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(205, 220, 57, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(
                          color: Color.fromRGBO(205, 220, 57, 1),
                        ),
                      ),
                    )),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
