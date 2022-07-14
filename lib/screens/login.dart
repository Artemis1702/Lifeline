import 'package:dbms_package/constants.dart';
import 'package:dbms_package/functions/button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:dbms_package/functions/inputfield.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final url = 'https://localhost:3000/api/v1/data/check/login/';
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
        title: const Center(
          child: Text(
            'Lifeline',
            style: appbartextstyle,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Enter your details',
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          InputField(
            visibility: true,
            label: 'Username',
          ),
          const SizedBox(
            height: 20.0,
          ),
          InputField(
            visibility: false,
            label: 'Password',
          ),
          SizedBox(
            height: 20.0,
          ),
          Button(
            next: '/user',
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
