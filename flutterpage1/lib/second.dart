// // ignore_for_file: deprecated_member_use

// import 'package:flutter/material.dart';
// import 'package:flutterpage1/signloginplaform2.dart';
// import 'package:flutterpage1/userform1.dart';
// import 'package:flutterpage1/userform2.dart';
// import 'package:flutterpage1/weather.dart';

// import 'loginsignin.dart';

// /// This Widget is the main application widget.
// class MyAppSecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Event Irad..'),
//           actions: <Widget>[
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: ElevatedButton(
//                 // borderSide: BorderSide(width: 4.0),
//                 child: Text('Login'),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const SecondRoute()),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//         backgroundColor: Colors.white,
//         body: const MyCardWidget(),
//       ),
//     );
//   }
// }

// /// This is the stateless widget that the main application instantiates.
// class MyCardWidget extends StatelessWidget {
//   const MyCardWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         child: Column(children: [
//       Container(
//         width: 400,
//         height: 200,
//         padding: new EdgeInsets.all(10.0),
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           color: Color.fromARGB(255, 247, 247, 246),
//           elevation: 10,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const ListTile(
//                 leading: Icon(Icons.add_road_sharp, size: 40),
//                 title: Text('Accident', style: TextStyle(fontSize: 25.0)),
//                 subtitle: Text('For Capture Accident ',
//                     style: TextStyle(fontSize: 18.0)),
//               ),
//               ButtonBar(
//                 children: <Widget>[
//                   RaisedButton(
//                     child: const Text('Form'),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const Userform1()),
//                       );
//                     },
//                   ),
//                   RaisedButton(
//                     child: const Text('Video Call..'),
//                     onPressed: () {/* ... */},
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       Container(
//         width: 400,
//         height: 200,
//         padding: new EdgeInsets.all(10.0),
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           color: Color.fromARGB(255, 247, 247, 246),
//           elevation: 10,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const ListTile(
//                 leading: Icon(Icons.health_and_safety, size: 40),
//                 title: Text('Health', style: TextStyle(fontSize: 25.0)),
//                 subtitle: Text('For Capture Health ',
//                     style: TextStyle(fontSize: 18.0)),
//               ),
//               ButtonBar(
//                 children: <Widget>[
//                   RaisedButton(
//                     child: const Text('Form'),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const Userform2()),
//                       );
//                     },
//                   ),
//                   RaisedButton(
//                     child: const Text('Video Call..'),
//                     onPressed: () {/* ... */},
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       Container(
//         width: 400,
//         height: 200,
//         padding: new EdgeInsets.all(10.0),
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           color: Color.fromARGB(255, 247, 247, 246),
//           elevation: 10,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const ListTile(
//                 leading: Icon(Icons.cloud, size: 40),
//                 title: Text('Weather', style: TextStyle(fontSize: 25.0)),
//                 subtitle:
//                     Text('live forecast.. ', style: TextStyle(fontSize: 18.0)),
//               ),
//               ButtonBar(
//                 children: <Widget>[
//                   RaisedButton(
//                     child: const Text('see weather'),
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const WeatherApp()));
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       Container(
//         width: 400,
//         height: 200,
//         padding: new EdgeInsets.all(10.0),
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           color: Color.fromARGB(255, 247, 247, 246),
//           elevation: 10,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const ListTile(
//                 leading: Icon(Icons.coronavirus, size: 40),
//                 title: Text('Covid-19', style: TextStyle(fontSize: 25.0)),
//                 subtitle:
//                     Text('live forecast.. ', style: TextStyle(fontSize: 18.0)),
//               ),
//               ButtonBar(
//                 children: <Widget>[
//                   RaisedButton(
//                     child: const Text('See Information...'),
//                     onPressed: () {/* ... */},
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       )
//     ]));
//   }
// }

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // final ButtonStyle style =
//     // ElevatedButton.styleFrom(backgroundColor: Colors.white,textStyle: const TextStyle(fontSize: 20));
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage("assets/images/background.jpg"),
//             fit: BoxFit.cover),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Padding(padding: EdgeInsets.all(50.0)),
//           ElevatedButton(
//             style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 backgroundColor: Color.fromARGB(162, 29, 27, 27)),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => LoginSignin()),
//               );
//             },
//             child: const Text('Sigin for Police'),
//           ),
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 backgroundColor: Color.fromARGB(162, 29, 27, 27)),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const LoginSignin2()),
//               );
//             },
//             child: const Text('Sigin for Doctor'),
//           ),
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 backgroundColor: Color.fromARGB(162, 29, 27, 27)),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MyAppSecondPage()),
//               );
//             },
//             child: const Text('Sigin for User'),
//           ),
//         ],
//       ),
//     );

//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: const Text('Second Route'),

//     //   ),
//     //   body: Center(

//     //   ),
//     // );
//   }
// }

// ignore_for_file: deprecated_member_use






// import 'package:flutter/material.dart';
// import 'package:flutterpage1/signloginplaform2.dart';
// import 'package:flutterpage1/userform1.dart';
// import 'package:flutterpage1/userform2.dart';
// import 'package:flutterpage1/weather.dart';

// import 'contactform.dart';
// import 'loginsignin.dart';
// import 'map.dart';
// // import 'package:url_launcher_example/custom_button.dart';
// import 'package:url_launcher/url_launcher.dart';

// /// This Widget is the main application widget.
// class MyAppSecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Event Irad..'),
//           flexibleSpace: Container(
//             // constraints: BoxConstraints.expand(),
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("assets/images/background.jpg"),
//                   fit: BoxFit.cover),
//             ),
//           ),
//           actions: <Widget>[
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: ElevatedButton(
//                 // borderSide: BorderSide(width: 4.0),
//                 child: Text('Contact us'),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const ContactForm()),
//                   );
//                 },
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10.0),
//               child: ElevatedButton(
//                 // borderSide: BorderSide(width: 4.0),
//                 child: Text('Login'),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const SecondRoute()),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//         backgroundColor: Colors.white,
//         body: const MyCardWidget(),
//       ),
//     );
//   }
// }

// /// This is the stateless widget that the main application instantiates.
// class MyCardWidget extends StatelessWidget {
//   const MyCardWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         child: Column(children: [
//       Container(
//         width: 400,
//         height: 200,
//         padding: new EdgeInsets.all(10.0),
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           color: Color.fromARGB(255, 247, 247, 246),
//           elevation: 10,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const ListTile(
//                 leading: Icon(Icons.add_road_sharp, size: 40),
//                 title: Text('Accident', style: TextStyle(fontSize: 25.0)),
//                 subtitle: Text('For Capture Accident ',
//                     style: TextStyle(fontSize: 18.0)),
//               ),
//               ButtonBar(
//                 children: <Widget>[
//                   RaisedButton(
//                     child: const Text('Form'),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const Userform1()),
//                       );
//                     },
//                   ),
//                   RaisedButton(
//                       child: const Text('Android Video Call..'),
//                       onPressed: () async {
//                         const url =
//                             'https://play.google.com/store/apps/details?id=com.google.android.apps.tachyon&hl=en';
//                         if (await canLaunch(url)) {
//                           await launch(url);
//                         } else {
//                           throw 'Could not launch $url';
//                         }
//                       }
//                       // },
//                       ),
//                   RaisedButton(
//                       child: const Text('Apple/Ios Video Call..'),
//                       onPressed: () async {
//                         const url =
//                             'https://apps.apple.com/us/app/google-duo/id1096918571';
//                         if (await canLaunch(url)) {
//                           await launch(url);
//                         } else {
//                           throw 'Could not launch $url';
//                         }
//                       }
//                       // },
//                       ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       Container(
//         width: 400,
//         height: 200,
//         padding: new EdgeInsets.all(10.0),
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           color: Color.fromARGB(255, 247, 247, 246),
//           elevation: 10,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const ListTile(
//                 leading: Icon(Icons.health_and_safety, size: 40),
//                 title: Text('Health', style: TextStyle(fontSize: 25.0)),
//                 subtitle: Text('For Capture Health ',
//                     style: TextStyle(fontSize: 18.0)),
//               ),
//               ButtonBar(
//                 children: <Widget>[
//                   RaisedButton(
//                     child: const Text('Form'),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const Userform2()),
//                       );
//                     },
//                   ),
//                   RaisedButton(
//                       child: const Text('Android Video Call..'),
//                       onPressed: () async {
//                         const url =
//                             'https://play.google.com/store/apps/details?id=com.google.android.apps.tachyon&hl=en';
//                         if (await canLaunch(url)) {
//                           await launch(url);
//                         } else {
//                           throw 'Could not launch $url';
//                         }
//                       }
//                       // },
//                       ),
//                   RaisedButton(
//                       child: const Text('Apple/Ios Video Call..'),
//                       onPressed: () async {
//                         const url =
//                             'https://apps.apple.com/us/app/google-duo/id1096918571';
//                         if (await canLaunch(url)) {
//                           await launch(url);
//                         } else {
//                           throw 'Could not launch $url';
//                         }
//                       }
//                       // },
//                       ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       Container(
//         width: 400,
//         height: 200,
//         padding: new EdgeInsets.all(10.0),
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           color: Color.fromARGB(255, 247, 247, 246),
//           elevation: 10,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const ListTile(
//                 leading: Icon(Icons.cloud, size: 40),
//                 title: Text('Weather', style: TextStyle(fontSize: 25.0)),
//                 subtitle:
//                     Text('live forecast.. ', style: TextStyle(fontSize: 18.0)),
//               ),
//               ButtonBar(
//                 children: <Widget>[
//                   RaisedButton(
//                     child: const Text('see weather'),
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const WeatherApp()));
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       Container(
//         width: 400,
//         height: 200,
//         padding: new EdgeInsets.all(10.0),
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           color: Color.fromARGB(255, 247, 247, 246),
//           elevation: 10,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const ListTile(
//                 leading: Icon(Icons.map, size: 40),
//                 title: Text('See all Country map', style: TextStyle(fontSize: 25.0)),
//                 subtitle:
//                     Text('live .. ', style: TextStyle(fontSize: 18.0)),
//               ),
//               ButtonBar(
//                 children: <Widget>[
//                   RaisedButton(
//                     child: const Text('See Information...'),
//                     onPressed: () async {
//                         const url =
//                             'https://www.mapbox.com/contribute/#/details?owner=accuweather-inc&id=cjknc24na2o5u2sqoy0t8ku8a&access_token=pk.eyJ1IjoiYWNjdXdlYXRoZXItaW5jIiwiYSI6ImNqeGtxeDc4ZDAyY2czcnA0Ym9ubzh0MTAifQ.HjSuXwG2bI05yFYmc0c9lw&utm_source=https%3A%2F%2Fwww.accuweather.com%2F&utm_medium=attribution_link&utm_campaign=referrer&q=india&l=1.1289%2F12.2481%2F80.2449';
//                         if (await canLaunch(url)) {
//                           await launch(url);
//                         } else {
//                           throw 'Could not launch $url';
//                         }
//                       },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       Container(
//         width: 400,
//         height: 200,
//         padding: new EdgeInsets.all(10.0),
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           color: Color.fromARGB(255, 247, 247, 246),
//           elevation: 10,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const ListTile(
//                 leading: Icon(Icons.coronavirus, size: 40),
//                 title: Text('covid-19', style: TextStyle(fontSize: 25.0)),
//                 subtitle:
//                     Text('live forecast.. ', style: TextStyle(fontSize: 18.0)),
//               ),
//               ButtonBar(
//                 children: <Widget>[
//                   RaisedButton(
//                     child: const Text('See Information...'),
//                     onPressed: () {/* ... */},
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ]));
//   }
// }

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // final ButtonStyle style =
//     // ElevatedButton.styleFrom(backgroundColor: Colors.white,textStyle: const TextStyle(fontSize: 20));
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage("assets/images/background.jpg"),
//             fit: BoxFit.cover),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Padding(padding: EdgeInsets.all(50.0)),
//           ElevatedButton(
//             style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 backgroundColor: Color.fromARGB(162, 29, 27, 27)),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => LoginSignin()),
//               );
//             },
//             child: const Text('Sigin for Police'),
//           ),
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 backgroundColor: Color.fromARGB(162, 29, 27, 27)),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const LoginSignin2()),
//               );
//             },
//             child: const Text('Sigin for Doctor'),
//           ),
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 backgroundColor: Color.fromARGB(162, 29, 27, 27)),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MyAppSecondPage()),
//               );
//             },
//             child: const Text('Sigin for User'),
//           ),
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 backgroundColor: Color.fromARGB(162, 29, 27, 27)),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const Mymap()),
//               );
//             },
//             child: const Text('Get Location'),
//           ),
//         ],
//       ),
//     );

//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: const Text('Second Route'),

//     //   ),
//     //   body: Center(

//     //   ),
//     // );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutterpage1/signloginplaform2.dart';
import 'package:flutterpage1/userform1.dart';
import 'package:flutterpage1/userform2.dart';
import 'package:flutterpage1/weather.dart';

import 'aboutform.dart';
import 'chatbot.dart';
import 'contactform.dart';
import 'loginsignin.dart';
import 'map.dart';
// import 'package:url_launcher_example/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

/// This Widget is the main application widget.
class MyAppSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.save),
        title: Text('Event'),
        flexibleSpace: Container(
            // constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
        actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                // borderSide: BorderSide(width: 4.0),
            //     style: ElevatedButton.styleFrom(
            //   primary: Colors.black.withOpacity(0.08),
            // ),
                style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: Colors.red.withOpacity(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  ),
                  side: BorderSide(color: Colors.white)),
            ),
                child: Text('About'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AboutForm()),
                  );
                },
              ),
            )
            ,Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                // borderSide: BorderSide(width: 4.0),
            //     style: ElevatedButton.styleFrom(
            //   primary: Colors.black.withOpacity(0.08),
            // ),
                style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: Colors.red.withOpacity(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  ),
                  side: BorderSide(color: Colors.white)),
            ),
                child: Text('Contact us'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactForm()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                // borderSide: BorderSide(width: 4.0),
                 style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: Colors.red.withOpacity(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  ),
                  side: BorderSide(color: Colors.white)),
            ),
                child: Text('Login'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()),
                  );
                },
              ),
            ),
          ],
          
        ),
        backgroundColor: Colors.white,
        body: const MyCardWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyCardWidget extends StatelessWidget {
  const MyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        width: 400,
        height: 200,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromARGB(255, 247, 247, 246),
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.add_road_sharp, size: 40),
                title: Text('Accident', style: TextStyle(fontSize: 25.0)),
                subtitle: Text('For Capture Accident ',
                    style: TextStyle(fontSize: 18.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: const Text('Form'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Userform1()),
                      );
                    },
                  ),
                  // RaisedButton(
                  //     child: const Text('Android Video Call..'),
                  //     onPressed: () async {
                  //       const url =
                  //           'https://play.google.com/store/apps/details?id=com.google.android.apps.tachyon&hl=en';
                  //       if (await canLaunch(url)) {
                  //         await launch(url);
                  //       } else {
                  //         throw 'Could not launch $url';
                  //       }
                  //     }
                  //     // },
                  //     ),
                  RaisedButton(
                      child: const Text('Apple/Ios Video Call..'),
                      onPressed: () async {
                        const url =
                            'https://apps.apple.com/us/app/google-duo/id1096918571';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }
                      // },
                      ),
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
        width: 400,
        height: 200,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromARGB(255, 247, 247, 246),
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.health_and_safety, size: 40),
                title: Text('Health', style: TextStyle(fontSize: 25.0)),
                subtitle: Text('For Capture Health ',
                    style: TextStyle(fontSize: 18.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: const Text('Form'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Userform2()),
                      );
                    },
                  ),
                  RaisedButton(
                      child: const Text('Android Video Call..'),
                      onPressed: () async {
                        const url =
                            'https://play.google.com/store/apps/details?id=com.google.android.apps.tachyon&hl=en';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }
                      // },
                      ),
                  // RaisedButton(
                  //     child: const Text('Apple/Ios Video Call..'),
                  //     onPressed: () async {
                  //       const url =
                  //           'https://apps.apple.com/us/app/google-duo/id1096918571';
                  //       if (await canLaunch(url)) {
                  //         await launch(url);
                  //       } else {
                  //         throw 'Could not launch $url';
                  //       }
                  //     }
                  //     // },
                  //     ),
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
        width: 400,
        height: 200,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromARGB(255, 247, 247, 246),
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.cloud, size: 40),
                title: Text('Weather', style: TextStyle(fontSize: 25.0)),
                subtitle:
                    Text('live forecast.. ', style: TextStyle(fontSize: 18.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: const Text('see weather'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WeatherApp()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
        width: 400,
        height: 200,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromARGB(255, 247, 247, 246),
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.map, size: 40),
                title: Text('See all Country map', style: TextStyle(fontSize: 25.0)),
                subtitle:
                    Text('live .. ', style: TextStyle(fontSize: 18.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: const Text('See Information...'),
                    onPressed: () async {
                        const url =
                            'https://www.mapbox.com/contribute/#/details?owner=accuweather-inc&id=cjknc24na2o5u2sqoy0t8ku8a&access_token=pk.eyJ1IjoiYWNjdXdlYXRoZXItaW5jIiwiYSI6ImNqeGtxeDc4ZDAyY2czcnA0Ym9ubzh0MTAifQ.HjSuXwG2bI05yFYmc0c9lw&utm_source=https%3A%2F%2Fwww.accuweather.com%2F&utm_medium=attribution_link&utm_campaign=referrer&q=india&l=1.1289%2F12.2481%2F80.2449';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
        width: 400,
        height: 200,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Color.fromARGB(255, 247, 247, 246),
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.coronavirus, size: 40),
                title: Text('covid-19', style: TextStyle(fontSize: 25.0)),
                subtitle:
                    Text('live forecast.. ', style: TextStyle(fontSize: 18.0)),
              ),
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: const Text('See Information...'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
          alignment: Alignment.centerRight,
          child: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Chatbot(),
                  ));
            },
            backgroundColor: Colors.green,
            child: const Icon(Icons.chat_outlined),
          )),
    ]));
  }
}

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // final ButtonStyle style =
//     // ElevatedButton.styleFrom(backgroundColor: Colors.white,textStyle: const TextStyle(fontSize: 20));
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage("assets/images/background.jpg"),
//             fit: BoxFit.cover),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Padding(padding: EdgeInsets.all(50.0)),
//           ElevatedButton(
//             style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 backgroundColor: Color.fromARGB(162, 29, 27, 27)),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => LoginSignin()),
//               );
//             },
//             child: const Text('Sigin for Police'),
//           ),
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 backgroundColor: Color.fromARGB(162, 29, 27, 27)),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const LoginSignin2()),
//               );
//             },
//             child: const Text('Sigin for Doctor'),
//           ),
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 backgroundColor: Color.fromARGB(162, 29, 27, 27)),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MyAppSecondPage()),
//               );
//             },
//             child: const Text('Sigin for User'),
//           ),
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: TextButton.styleFrom(
//                 primary: Colors.white,
//                 backgroundColor: Color.fromARGB(162, 29, 27, 27)),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const Mymap()),
//               );
//             },
//             child: const Text('Get Location'),
//           ),
//           Container(  
//                 padding: const EdgeInsets.all(8),  
//                 child: const Text('First', style: TextStyle(fontSize: 20)),  
//                 color: Colors.yellow,  
//               ), 
//         ],
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';  
  
// void main() => runApp(MyApp());  
  
class SecondRoute extends StatelessWidget { 
  const SecondRoute({Key? key}) : super(key: key); 
  // This widget is the root of your application.  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      home: MyGridScreen(),  
    );  
  }  
}  
  
class MyGridScreen extends StatefulWidget {  
  MyGridScreen({Key? key}) : super(key: key);  
  
  @override  
  _MyGridScreenState createState() => _MyGridScreenState();  
}  
  
class _MyGridScreenState extends State<MyGridScreen> {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Event"),  
        backgroundColor: Colors.green,  
      ),  
      body: Center(  
        
          child: GridView.extent(  
            primary: false,  
            padding: const EdgeInsets.all(16),  
            crossAxisSpacing: 10,  
            mainAxisSpacing: 10,  
            maxCrossAxisExtent: 200.0,  
            children: <Widget>[  
              InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>   LoginSignin()));
              },
             child:  
             Container(  
                padding: EdgeInsets.only(top: 120.0),  
                // child: const Text('Police', style: TextStyle(decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,fontSize: 20,)),  
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
    primary: Colors.black, // Background color
    onPrimary: Colors.amber, // Text Color (Foreground color)
  ),
  // style: raisedButtonStyle,
                  onPressed: () { 
                    Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>   LoginSignin()));

                  },
                  child: Text('Police',style: TextStyle(decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,fontSize: 20)),
                ),
                decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/images/police.jpg"),
              fit: BoxFit.fill,
          )
        )
              )),
              InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>   LoginSignin2()));
              },
             child:  
             Container(  
                padding: EdgeInsets.only(top: 120.0),  
                // child: const Text('Doctor', style: TextStyle(decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,fontSize: 20)),  
                child: ElevatedButton(
  // style: raisedButtonStyle,
                  style: ElevatedButton.styleFrom(
    primary: Colors.black, // Background color
    onPrimary: Colors.amber, // Text Color (Foreground color)
  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>   LoginSignin2()));
                   },
                  child: Text('Doctor',style: TextStyle(decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,fontSize: 20)),
                ),
                decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/images/doctor.png"),
              fit: BoxFit.fill,
          )
        )
              )),
              InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>   MyAppSecondPage()));
              },
             child:  
             Container(  
                // child: 
                padding: EdgeInsets.only(top: 120.0),  
                // child: const Text('User',icon:Icons.home, style: TextStyle(decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,fontSize: 20)),  
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
    primary: Colors.black, // Background color
    onPrimary: Colors.amber, // Text Color (Foreground color)
  ),
  // style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>   MyAppSecondPage()));
                   },
                  child: Text('User',style: TextStyle(decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,fontSize: 20)),
                ),
                // color: Color.fromARGB(239, 238, 230, 230),  
                decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/images/user.png"),
              fit: BoxFit.fill,
          )
        )
              )),
              InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>   Mymap()));
              },
             child:  
             Container(  
                padding: EdgeInsets.only(top: 120.0),  
                // child: const Text('Location', style: TextStyle(decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,fontSize: 20)),  
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
    primary: Colors.black, // Background color
    onPrimary: Colors.amber, // Text Color (Foreground color)
  ),
  // style: raisedButtonStyle,
                  onPressed: () {
                    Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>   Mymap()));
                   },
                  child: Text('Location',style: TextStyle(decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,fontSize: 20)),
                ),
                decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/images/nav.jpg"),
              fit: BoxFit.fill,
          )
        )
              )),
               
               
                
            ],  
          ),
          ),
            
    );  
  }  
}  