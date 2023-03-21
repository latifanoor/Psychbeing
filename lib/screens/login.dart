import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:psychbeing_app/controllers/authcontroller.dart';
import 'package:psychbeing_app/utils/utils.dart';

import 'newsfeed.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  var username = "";
  var password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(220, 224, 189, 1.0),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Container(
            width: Get.width,
            height: Get.height * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/login.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          //styling
          //USERNAME
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.1,
          ),
          Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //text input
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        username = value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Email",
                        fillColor: Colors.white70),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  //text input
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Password",
                        fillColor: Colors.white70),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                ],
              )),
          //SUBMIT BUTTON
          Container(
            width: Get.width,
            height: 45,
            child: TextButton(
              onPressed: () {
                _loginUser();
              },
              child: Text(
                "LOGIN",
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
        ]),
      ),
    );
  }

  Future<void> _loginUser() async {
    FocusScope.of(context).unfocus();
    if (username == "") {
      Utils.showError("Please fill in your username");
    } else if (password == "") {
      Utils.showError("Please fill in your Password");
    } else {
      var loggedIn = await AuthController.to.login(username, password);

      if (loggedIn) {
        Get.offUntil(
            GetPageRoute(page: () => const Newsfeedpage()), (route) => false);
        Get.to(() => Newsfeedpage());
      }
    }
  }
}
