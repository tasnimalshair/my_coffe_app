import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LuanchScreen extends StatefulWidget {
  const LuanchScreen({Key? key}) : super(key: key);

  @override
  _LuanchScreenState createState() => _LuanchScreenState();
}

class _LuanchScreenState extends State<LuanchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/enter_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Image.asset(
                "images/coffe.jpg",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          // Center(
          //   child: Card(
          //     elevation: 6,
          //     shadowColor: Colors.white,
          //     color: Colors.brown.withOpacity(.8),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     child: Padding(
          //       padding:
          //           const EdgeInsets.symmetric(vertical: 20, horizontal: 90),
          //       child: Text(
          //         "Coffe",
          //         style: TextStyle(
          //             color: Colors.brown[100],
          //             fontSize: 25,
          //             fontWeight: FontWeight.bold),
          //       ),
          //     ),
          //   ),
          // )
          Positioned(
            left: 100,
            bottom: 190,
            child: Text(
              "Coffee",
              style: TextStyle(
                color: Colors.brown[100],
                fontSize: 33,
                fontWeight: FontWeight.bold,
                // fontFamily: 'Cookie',
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
