import 'package:flutter/material.dart';
import 'package:dbms_package/constants.dart';
import 'package:dbms_package/functions/button.dart';
import 'package:dbms_package/functions/inputfield.dart';

class Donation extends StatefulWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  String? dropdownvalue;
  var items = [
    'Heart',
    'Intestines',
    'Kidney',
    'Liver',
    'Lung',
    'Pancreas',
  ];
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
              'Enter The Organ Details',
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(style: BorderStyle.solid, width: 3.0),
              ),
              child: DropdownButton(
                hint: Text('Organ'),
                value: dropdownvalue,
                isExpanded: true,
                borderRadius: BorderRadius.circular(20.0),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10.0,
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
