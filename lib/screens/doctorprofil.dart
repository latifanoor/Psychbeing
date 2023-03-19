import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:psychbeing_app/screens/linkscreen.dart';
import 'package:psychbeing_app/screens/newsfeed.dart';

class Doctorsprofile extends StatelessWidget {
  const Doctorsprofile({Key? key}) : super(key: key);

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
                  image: AssetImage("doc.jpeg"),
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
                    "DR. Shiphie Mkamburi",
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
                    "Psychotherapy, also called talk therapy or usually just is a form of treatment aimed at relieving emotional distress and mental health problems. Provided by any of a variety of trained professionals—psychiatrists, psychologists, social workers, or licensed counselors—it involves examining and gaining insight into life choices and difficulties faced by individuals, couples, or families. Therapy sessions refer to structured meetings between a licensed provider and a client with a goal of improving some aspect of their life. Psychotherapy encompasses many types of treatment and is practiced by a range of clinicians using a variety of strategies. The critical aspect is that the client or patient works collaboratively with the therapist and can identify improvement and positive change over time.",
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
                      onPressed: () {
                        Get.to(() => Newsfeedpage());
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
