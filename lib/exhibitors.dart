import 'package:flutter/material.dart';

class Exhibitors extends StatefulWidget {
  @override
  _ExhibitorsState createState() => _ExhibitorsState();
}

class _ExhibitorsState extends State<Exhibitors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Exhibitors'),
      ),
      body: Text('This is the exhibitors page'),
    );
  }
}
