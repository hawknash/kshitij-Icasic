import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  String username;
  HomePage(this.username);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int _selectedIndex = 0;
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Icasic'),
          backgroundColor: Colors.black,
        ),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Sessions'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mic),
              title: Text('Speakers'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('Partners'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black38,
          onTap: _onItemTapped,
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: new Text(
                    widget.username.toUpperCase(),
                    style: new TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                  accountEmail: new Text(
                    "Strive for progress, not perfection.",
                    style: new TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.w500),
                  )),
              ListTile(
                leading: new Icon(Icons.book),
                title: Text('Exhibitors'),
                onTap: () {},
              ),
              ListTile(
                leading: new Icon(Icons.chevron_right),
                title: Text('Directory'),
                onTap: () {},
              ),
              ListTile(
                leading: new Icon(Icons.warning),
                title: Text('FAQ'),
                onTap: () {},
              ),
              ListTile(
                leading: new Icon(Icons.public),
                title: Text('Social Media'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
