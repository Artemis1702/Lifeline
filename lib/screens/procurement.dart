import 'package:dbms_package/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:dbms_package/constants.dart';
import 'package:dbms_package/functions/inputfield.dart';
import 'package:dbms_package/functions/button.dart';

class Procurement extends StatefulWidget {
  const Procurement({Key? key}) : super(key: key);

  @override
  State<Procurement> createState() => _ProcurementState();
}

class _ProcurementState extends State<Procurement> {
  String? dropdownvalue;
  var items = [
    'Heart',
    'Intestines',
    'Kidney',
    'Liver',
    'Lung',
    'Pancreas',
  ];
  var organ = {
    'Heart': 1,
    'Intestines': 2,
    'Kidney': 3,
    'Liver': 4,
    'Lung': 5,
    'Pancreas': 6,
  };
  var size = {
    'Adult': 1,
    'Child': 2,
  };
  var blood = {
    'A+': 1,
    'O+': 2,
    'B+': 3,
    'AB+': 4,
    'A-': 5,
    'O-': 6,
    'B-': 7,
    'AB-': 8,
  };

  var organid, sizeid, bloodid;

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
                    organid = organ[dropdownvalue];
                  });
                },
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            InputField(
              press: (value) {
                setState(() {
                  bloodid = blood[value];
                });
              },
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
              press: (value) {
                setState(() {
                  sizeid = size[value];
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
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Search(
                    organid: organid,
                    bloodid: bloodid,
                    sizeid: sizeid,
                  );
                }));
              },
              child: Text(
                'Search',
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
