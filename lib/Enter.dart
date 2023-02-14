import 'package:flutter/material.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({Key? key}) : super(key: key);

  @override
  _EnterScreenState createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset("images/cups.jpg"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              // alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black.withOpacity(.9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 30),
                    child: Center(
                      child: Text(
                        "Get the best coffee in town!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.brown[300],
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 55, vertical: 16),
                            primary: Colors.brown[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.brown[100], fontSize: 16),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60, vertical: 16),
                            primary: Colors.brown[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/login_screen');
                          },
                          child: Text(
                            "Log in",
                            style: TextStyle(
                                color: Colors.brown[100], fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          side: BorderSide(color: Colors.blue),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        label: Text(
                          "Connect with Facebook",
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
