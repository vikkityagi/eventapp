// ignore_for_file: deprecated_member_use

// import 'package:eventform/signup.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
import 'package:maps_launcher/maps_launcher.dart';

// import 'homepage.dart';
// import 'accidentstart.dart';
// import 'signup.dart';

class Mymap extends StatefulWidget {
  const Mymap({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Mymap> {
  // For CircularProgressIndicator.
  bool visible = false;

  // Getting value from TextField widget.
  final latController = TextEditingController();
  final lonController = TextEditingController();
  // final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Get Location'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10.0),
            TextFormField(
              controller: latController,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(labelText: 'Enter  Lat'),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: lonController,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(labelText: 'Enter Long'),

              // obscureText: true,
            ),
            SizedBox(height: 10.0),
            SizedBox(height: 20.0),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.green)),
              onPressed: () {
                MapsLauncher.launchCoordinates(double.parse(latController.text),
                    double.parse(lonController.text), 'This place are here..');
              },
              child: Text('Get'),
              color: Colors.green,
              minWidth: 300.0,
            ),
            SizedBox(height: 20.0),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text("Don't have an account?"),
            //     new GestureDetector(
            //       onTap: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) => SignupPage()),
            //         );
            //       },
            //       child: new Text(
            //         "Sign Up",
            //         style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
        // ],
      ),
      // ),
    );
  }
}
