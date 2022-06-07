// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'aboutform.dart';



class LangForm extends StatelessWidget {
  // AboutForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    supportedLocales: [
      Locale('en', "ZA"),
      Locale('pt', "MZ"),
      ],
      // title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('के बारे में..'),
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
          label: Text('English'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AboutForm()),
                  );
                },
              ),
            ),
            
          ],
        ),
        body: Column(
  children: <Widget>[
    Container(
      child: ListTile(
        // leading: Icons.circle,
          // SizedBox(height: 10),
        title: Text('यह एप्लिकेशन पुलिस, अस्पताल और उपयोगकर्ता के लिए बहुत उपयोगी है '),
        tileColor: Colors.red,
      ),
    ),
    Container(
      child: ListTile(
        // trailing: FlutterLogo(),
        title: Text('इस एप्लिकेशन में उपयोगकर्ता के लिए यह स्क्रीन है। उपयोगकर्ता के पास 4 प्रकार का विकल्प होता है यदि उपयोगकर्ता पहले विकल्प पर क्लिक करता है और फ़ॉर्म भरता है तो फॉर्म पहला फ़ील्ड नॉमिनी (पीड़ित) नाम इंगित करता है दूसरा फ़ील्ड इस फ़ील्ड में नॉमिनी नंबर इंगित करता है जिसमें हम दो आइकन (आइकन 1, आइकन 2) देख सकते हैं। आइकन 2 फ़ील्ड पर क्लिक करें स्वचालित रूप से भर जाता है, पता फ़ील्ड के समान (दो बार क्लिक करें) और थ्रिड फ़ील्ड है। नॉमिनी की पहचान के लिए आधार नंबर और फिर एक साथ जमा करें विवरण नजदीकी पुलिस और अस्पताल को भेजा जाएगा. '),
        tileColor: Colors.green,
      ),
    ),
    Container(
      child: ListTile(
        // trailing: FlutterLogo(),
        title: Text('पुलिस और अस्पताल उस व्यक्ति से वीडियो कॉल के जरिए सीधे संवाद कर सकते हैं।'),
        tileColor: Colors.yellow,
      ),
    ),
    Container(
      child: ListTile(
        // trailing: FlutterLogo(),
        title: Text('यदि पुलिस और अस्पताल पीड़ित द्वारा दिए गए अक्षांश और देशांतर मूल्यों के माध्यम से उस तक पहुंचना चाहते हैं तो वे कर सकते हैं।'),
        tileColor: Colors.orange,
      ),
    ),
    Container(
      child: ListTile(
        // trailing: FlutterLogo(),
        title: Text('पॉइंट-5 के लिए हमने एक लॉगिन बटन बनाया है जिसे आप होम पेज पर देख सकते हैं। जब आप उस बटन पर क्लिक करते हैं तो आपको अंतिम विकल्प (get location) दिखाई देता है और अंतिम विकल्प व्यक्ति को मानचित्र डेटा देता है।'),
        tileColor: Colors.lightBlue,
      ),
    ),
    Container(
      child: ListTile(
        // trailing: FlutterLogo(),
        title: Text('इस एप्लिकेशन में पुलिस दुर्घटना या व्यक्ति के बारे में कुछ डेटा लिखती है। अस्पताल रोगी विवरण जोड़ सकता है। तो इस एप्लिकेशन का मुख्य लाभ हर बार कॉपी और पेन रखने की जरूरत नहीं है।'),
        tileColor: Colors.pink,
      ),
    ),
  ],
)
      ),
    );
  }
}