import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psychbeing_app/controllers/maincontroller.dart';
import 'package:psychbeing_app/screens/doctorprofil.dart';
import 'package:psychbeing_app/screens/newsfeed.dart';
import 'package:psychbeing_app/screens/oneononchat.dart';

class OneonOnechat extends StatelessWidget {
  const OneonOnechat({Key? key}) : super(key: key);

  final upperTab = const TabBar(tabs: <Tab>[
    Tab(icon: Icon(Icons.search)),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 220, 57, 1),
        title: Text("Find Your Doctor"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: Obx(() {
        return ListView(
            children: maincontroller.to.therapy.entries
                .map((e) => ListTile(
                      onTap: () {
                        Get.to(() => Doctorsprofile(
                              therapist: e.value,
                            ));
                      },
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("${e.value["Image"]}"),
                      ),
                      title: Text("${e.value["Name"]}"),
                      subtitle: Text("Therapist"),
                    ))
                .toList());
      }),
    );
  }
}
