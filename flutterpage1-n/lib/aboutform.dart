// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'language.dart';



class AboutForm extends StatelessWidget {
  // AboutForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    supportedLocales: [
      Locale('en', "ZA"),
      Locale('pt', "MZ"),
      ],
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('About..'),
          actions: <Widget>[
          //   Padding(
          //     padding: EdgeInsets.all(10.0),
          //     child: ElevatedButton.icon(
          //       icon: Icon(
          //   Icons.language,
          //   color: Colors.black,
          //   size: 30.0,
          // ),
          // label: Text('Hindi'),
          //       onPressed: () {
          //         // Navigator.push(
          //         //   context,
          //         //   MaterialPageRoute(
          //         //       builder: (context) => const ContactForm()),
          //         // );
          //       },
          //     ),
          //   ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton.icon(
                icon: Icon(
            Icons.language,
            color: Colors.black,
            size: 30.0,
          ),
          label: Text('हिन्दी'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LangForm()),
                  );
                },
              ),
            ),
            
          ],
        ),
        body: SingleChildScrollView(
  child: Column(children : <Widget>[
    Container(
      child: ListTile(
        // leading: Icons.circle,
          // SizedBox(height: 10),
        title: Text('This application is very usefull for the police, Hospital and User '),
        tileColor: Colors.red,
      ),
    ),
    Container(
      child: ListTile(
        // trailing: FlutterLogo(),
        title: Text('In this application It Screen for the User. User have a 4 type of option if user click on the ist option and filll the form then \nIst field indicate Nomanee (victim) name Second field indicate the Nomanee Number in this field has we can see two \nIcon (icon1,icon2) click on icon2 field is automatically fill same as address field (click two time) and thrid field is\n Adhar number for Nomanee identification and then Submit sumultaeously detail will be send to nearist police and hospital. '),
        tileColor: Colors.green,
      ),
    ),
    Container(
      child: ListTile(
        // trailing: FlutterLogo(),
        title: Text('Police and Hospital can directly communicate with that person through video call.'),
        tileColor: Colors.yellow,
      ),
    ),
    Container(
      child: ListTile(
        // trailing: FlutterLogo(),
        title: Text('If police and Hospital want to reach him throught the latitude and longitude value given be the victim then those can.'),
        tileColor: Colors.orange,
      ),
    ),
    Container(
      child: ListTile(
        // trailing: FlutterLogo(),
        title: Text('For point-5 we made a login button you can see this on home page. when you click on that button then you see the last option(get location button) and  last option give the map data to person.'),
        tileColor: Colors.lightBlue,
      ),
    ),
    Container(
      child: ListTile(
        // trailing: FlutterLogo(),
        title: Text('In this applicatio police write some data about accident or person. Hospital might add the patient detail. So main benefit of this applicatioon no need to keep copy and pen everytime.'),
        tileColor: Colors.pink,
      ),
    ),
  ],
)
      ),
    ));
  }
}