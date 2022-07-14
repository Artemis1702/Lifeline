import 'package:flutter/material.dart';
import 'package:dbms_package/constants.dart';
import 'package:dbms_package/functions/button.dart';

class DonationChoice extends StatelessWidget {
  const DonationChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Lifeline',
          style: appbartextstyle,
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Donation',
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(
              height: 40.0,
            ),
            Button(
              text: 'Organ Donation',
              next: '/donation',
            ),
            SizedBox(
              height: 40.0,
            ),
            Button(
              text: 'Tissue Donation',
              next: '/tissuedonation',
            ),
          ],
        ),
      ),
    );
  }
}
