import 'package:flutter/material.dart';
import 'package:dbms_package/constants.dart';
import 'package:dbms_package/functions/button.dart';

class DonationDone extends StatelessWidget {
  const DonationDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
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
            'You have donated Succesfully',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40.0),
          ),
          Button(
            next: '/user',
            text: 'Return to Selection screen',
          ),
          SizedBox(
            height: 20.0,
          ),
          Button(
            next: '/home',
            text: 'Log out',
          ),
        ],
      ),
    );
  }
}
