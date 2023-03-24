import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psychbeing_app/controllers/maincontroller.dart';

class Doctorsprofile extends StatelessWidget {
  const Doctorsprofile({Key? key, required this.therapist}) : super(key: key);
  final Map therapist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 250,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Ink.image(
                  image: NetworkImage("${therapist["Image"]}"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${therapist["Name"]}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Therapy",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 3.0),
                      borderRadius: BorderRadius.all(Radius.circular(
                              5.0) //                 <--- border radius here
                          ),
                    ),
                    child: Text(
                      "4.9 ⭐",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Text(
                    "${therapist["Bio"]}",
                    style: TextStyle(color: Colors.black87, fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //BOOKING BUTTON
                  Container(
                    width: Get.width,
                    height: 45,
                    child: TextButton(
                      onPressed: () async {
                        await maincontroller.to
                            .sendEmail('${therapist["Name"]}');
                      },
                      child: Text(
                        "BOOKING",
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
            ],
          ),
        ),
      ),
    );
  }
}
