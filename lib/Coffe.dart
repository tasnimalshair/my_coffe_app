import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Coffee extends StatefulWidget {
  const Coffee({Key? key}) : super(key: key);

  @override
  _CoffeeState createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.brown),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Espresso",
          style: TextStyle(
              color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset("images/esp.png"),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "- 1/2 cup ground coffee (French or other  dark roast)",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent[900]),
                ),
                Text(
                  "- 1/2 cups cold water",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent[900]),
                ),
                Text(
                  "- Lemon twists, optional",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent[900]),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Price: ",
                      style: TextStyle(
                          color: Colors.orange[600],
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "5 ",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("dolars ",
                        style: TextStyle(
                          color: Colors.orange[600],
                          fontSize: 20,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
