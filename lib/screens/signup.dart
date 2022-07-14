import 'package:dbms_package/constants.dart';
import 'package:dbms_package/functions/button.dart';
import 'package:dbms_package/functions/inputfield.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final url = "http://10.0.2.2:3000/api/v1/data/signup/";
  void postData() async {
    try {
      var response = await post(
        Uri.parse(url),
        body: jsonEncode({
          "name": _name,
          "mobile": _mobile,
          "age": _age,
          "gender": _gender,
          "username": _username,
          "password": _password,
        }),
      );
      print(response.body);
    } catch (e) {
      print(e);
    }
  }

  String? _name, _username, _gender, _password;
  int? _mobile, _age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lifeline',
          style: appbartextstyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter Your Details',
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            InputField(
              visibility: true,
              label: 'Name',
              press: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            InputField(
              visibility: true,
              label: 'Mobile',
              press: (value) {
                setState(() {
                  _mobile = int.parse(value);
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            InputField(
              visibility: true,
              label: 'Age',
              press: (value) {
                setState(() {
                  _age = int.parse(value);
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            InputField(
              visibility: true,
              label: 'Gender',
              press: (value) {
                setState(() {
                  _gender = value;
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            InputField(
              visibility: true,
              label: 'Username',
              press: (value) {
                setState(() {
                  _username = value;
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            InputField(
              visibility: false,
              label: 'Password',
              press: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                fixedSize: Size(350, 50),
                primary: buttonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onPressed: () {
                postData();
                Navigator.pushNamed(context, '/user');
              },
              child: Text(
                'Sign up',
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
