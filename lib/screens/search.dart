import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:dbms_package/constants.dart';

class Search extends StatefulWidget {
  final int organid, bloodid, sizeid;
  const Search({
    required this.organid,
    required this.bloodid,
    required this.sizeid,
  });

  @override
  State<Search> createState() => _SearchState(
        organid: organid,
        bloodid: bloodid,
        sizeid: sizeid,
      );
}

class _SearchState extends State<Search> {
  final int organid, bloodid, sizeid;
  _SearchState({
    required this.organid,
    required this.bloodid,
    required this.sizeid,
  });

  var _rows = [];

  void getData() async {
    var url = 'http://10.0.2.2:3000/api/v1/data/search/organ/' +
        organid.toString() +
        '/' +
        bloodid.toString() +
        '/' +
        sizeid.toString() +
        '/';
    try {
      // print(12.toString());
      final response = await get(Uri.parse(url));
      final data = jsonDecode(response.body) as List;
      setState(() {
        _rows = data;
      });
    } catch (err) {}
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

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
            children: [
              for (var row in _rows)
                Row(
                  children: [
                    Text('${row["donationid"]}'),
                    Text('${row["organ"]}'),
                    Text('${row["bloodgroup"]}'),
                    Text('${row["size"]}'),
                    Text('${row["tissue"]}'),
                    Text('${row["username"]}'),
                  ],
                )
            ],
          ),
        ));
  }
}
