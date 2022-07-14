import 'package:flutter/material.dart';
import 'package:dbms_package/functions/button.dart';
import 'package:dbms_package/functions/inputfield.dart';
import 'package:dbms_package/constants.dart';

class TissueDonation extends StatelessWidget {
  const TissueDonation({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter The Tissue Details',
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            InputField(
              visibility: true,
              label: 'Blood Type',
            ),
            SizedBox(
              height: 10.0,
            ),
            InputField(
              visibility: true,
              label: 'Tissue type',
            ),
            SizedBox(
              height: 10.0,
            ),
            InputField(
              visibility: true,
              label: 'Organ Size',
            ),
            SizedBox(
              height: 20.0,
            ),
            Button(
              next: '/donationdone',
              text: 'Donate',
            )
          ],
        ),
      ),
    );
  }
}
