import 'package:dbms_package/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dbms_package/functions/button.dart';

class StartChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Lifeline',
          style: appbartextstyle,
        )), // name yet to decide
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Welcome to Lifeline",
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
              height: 40.0,
            ),
            Button(
              text: 'Existing User? Login',
              next: '/login',
            ),
            SizedBox(
              height: 40.0,
            ),
            Button(
              text: 'New User? Sign up',
              next: '/signup',
            ),
          ],
        ),
      ),
    );
  }
}
