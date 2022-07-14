import 'package:flutter/material.dart';
import 'package:dbms_package/functions/button.dart';
import 'package:dbms_package/constants.dart';

class UserChoice extends StatelessWidget {
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
              "Welcome User",
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
              height: 40.0,
            ),
            Button(
              text: 'Donation',
              next: '/donationchoice',
            ),
            SizedBox(
              height: 40.0,
            ),
            Button(
              text: 'Procurement',
              next: '/procurementchoice',
            ),
          ],
        ),
      ),
    );
  }
}
