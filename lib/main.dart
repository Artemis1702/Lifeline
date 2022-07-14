import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/start.dart';
import 'screens/signup.dart';
import 'screens/user.dart';
import 'screens/donation.dart';
import 'screens/donationdone.dart';
import 'screens/procurement.dart';
import 'screens/search.dart';
import 'screens/donationchoice.dart';
import 'screens/procurementchoice.dart';
import 'screens/tissuedonation.dart';
import 'screens/tissueprocurement.dart';

void main() {
  runApp(const OrganDonor());
}

class OrganDonor extends StatelessWidget {
  const OrganDonor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Comfortaa',
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      routes: {
        '/home': (context) => StartChoice(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/user': (context) => UserChoice(),
        '/donation': (context) => Donation(),
        '/donationdone': (context) => DonationDone(),
        '/procurement': (context) => Procurement(),
        // '/searchresults': (context) => Search(),
        '/donationchoice': (context) => DonationChoice(),
        '/tissuedonation': (context) => TissueDonation(),
        '/procurementchoice': (context) => ProcurementChoice(),
        '/tissueprocurement': (context) => TissueProcurement(),
      },
      initialRoute: '/home',
    );
  }
}
