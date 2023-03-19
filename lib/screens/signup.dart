import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:psychbeing_app/controllers/authcontroller.dart';
import 'package:psychbeing_app/utils/utils.dart';

import 'newsfeed.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(220, 224, 189, 1.0),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(20),
        child: FormBuilder(
          key: _formKey,
          child: Column(children: [
            Container(
              width: Get.width,
              height: Get.height * 0.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/signup.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //styling
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            FormBuilderTextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Email",
                  fillColor: Colors.white70),
              name: 'email',
            ),
            //NAME
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            //text input
            FormBuilderTextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Name",
                  fillColor: Colors.white70),
              name: 'name',
            ),
            //USERNAME
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            //text input
            FormBuilderTextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Username",
                  fillColor: Colors.white70),
              name: 'username',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            //text input
            FormBuilderTextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Password",
                  fillColor: Colors.white70),
              name: 'password',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            FormBuilderTextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Phone Number",
                  fillColor: Colors.white70),
              name: 'phone',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            //SUBMIT BUTTON
            Container(
              width: Get.width,
              height: 45,
              child: TextButton(
                onPressed: () async {
                  await _signupUser(context);
                },
                child: Text(
                  "SIGN UP",
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
      ),
    );
  }

  Future<void> _signupUser(context) async {
    FocusScope.of(context).unfocus();
    var validate = _formKey.currentState!.validate();
    if (validate) {
      _formKey.currentState!.save();
      var fields = _formKey.currentState!.value;
      // print(fields.toString());

      var loggedIn = await AuthController.to.register(
          fields["name"],
          fields["email"],
          fields["phone"],
          fields["username"],
          fields["password"]);

      if (loggedIn) {
        Get.offUntil(
            GetPageRoute(page: () => const Newsfeedpage()), (route) => false);
        Get.to(() => Newsfeedpage());
      }
    }
  }
}
