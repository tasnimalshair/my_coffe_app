import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          fixedColor: Colors.green,
          onTap: (int value) {
            setState(() {
              _current = value;
            });
          },
          currentIndex: _current,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.brown[600],
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.brown[400],
              icon: Icon(Icons.location_on_outlined),
              label: 'Location',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.brown[200],
              icon: Icon(Icons.person_outline_outlined),
              label: 'Profile',
            ),
          ]),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Menu",
          style: TextStyle(color: Colors.brown[300], fontSize: 23),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.brown,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              leading: Icon(
                Icons.coffee,
                color: Colors.brown,
                size: 30,
              ),
              title: Text(
                "Espresso",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                color: Colors.brown,
                onPressed: () {
                  Navigator.pushNamed(context, '/coffee_screen');
                },
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.coffee,
                color: Colors.brown,
                size: 30,
              ),
              title: Text(
                "Cappuccion",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                color: Colors.brown,
                onPressed: () {},
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.coffee,
                color: Colors.brown,
                size: 30,
              ),
              title: Text(
                "Macciato",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                color: Colors.brown,
                onPressed: () {},
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.coffee,
                color: Colors.brown,
                size: 30,
              ),
              title: Text(
                "Mocha",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                color: Colors.brown,
                onPressed: () {},
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.coffee,
                color: Colors.brown,
                size: 30,
              ),
              title: Text(
                "Latte",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                color: Colors.brown,
                onPressed: () {},
              ),
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
