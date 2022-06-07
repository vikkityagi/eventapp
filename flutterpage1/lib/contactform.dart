// import 'package:flutter/material.dart';
// import 'package:flutterpage1/second.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'package:image_picker/image_picker.dart';
// // import 'dart:async';

// // import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:mobile_number/mobile_number.dart';

// // pick image

// // import 'package:http/http.dart' as http;

// class Userform1 extends StatelessWidget {
//   const Userform1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'User Form',
//       home: UploadPage(),
//     );
//   }
// }

// // class StartPage extends StatelessWidget {
// //   const StartPage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(context) {
// //     TextEditingController controller1 = TextEditingController();

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Flutter File Upload Example')
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(8.0),
// //         child: Column(
// //           children: <Widget>[

// //             TextFormField(
// //               controller: controller1,
// //               decoration: const InputDecoration(
// //                 labelText: 'Date',
// //                 fillColor: Colors.white,
// //                 filled: true
// //               ),
// //               autofocus: true,
// //             ),
// //             SizedBox(height: 20),
// //             ElevatedButton(
// //               child: const Text("Take me to the upload screen"),
// //               onPressed: () => switchScreen(controller1.text, context),
// //             )
// //           ],
// //         ),
// //       )
// //     );
// //   }
// //   void switchScreen(str, context) =>
// //     Navigator.push(context, MaterialPageRoute(
// //       builder: (context) => const UploadPage(url: 'http://192.168.43.134:3000/upload')
// //     ));
// // }

// class UploadPage extends StatefulWidget {
//   const UploadPage({Key? key}) : super(key: key);

//   final String url = 'http://192.168.68.104:2900/upload';

//   @override
//   _UploadPageState createState() => _UploadPageState();
// }

// class _UploadPageState extends State<UploadPage> {
//   String location = 'Null, Click photo';
//   static String Address = 'searching...';
//   bool valuefirst = false;
//   bool valuesecond = false;
//   TextEditingController controller1 = TextEditingController();
//   TextEditingController controller2 = TextEditingController();
//   TextEditingController controller3 = TextEditingController();
//   TextEditingController controller4 = TextEditingController();
//   // TextEditingController controller5 = TextEditingController();

//   String phno = '';
//   String _mobileNumber = '';
//   List<SimCard> _simCard = <SimCard>[];

//   @override
//   void initState() {
//     super.initState();
//     MobileNumber.listenPhonePermission((isPermissionGranted) {
//       if (isPermissionGranted) {
//         initMobileNumberState();
//       } else {}
//     });

//     initMobileNumberState();
//   }

//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> initMobileNumberState() async {
//     if (!await MobileNumber.hasPhonePermission) {
//       await MobileNumber.requestPhonePermission;
//       return;
//     }
//     String mobileNumber = '';
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       mobileNumber = (await MobileNumber.mobileNumber)!;
//       _simCard = (await MobileNumber.getSimCards)!;
//     } on PlatformException catch (e) {
//       debugPrint("Failed to get mobile number because of '${e.message}'");
//     }

//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;

//     setState(() {
//       _mobileNumber = mobileNumber;
//     });
//   }

//   // Widget fillCards() {
//   //   List<Widget> widgets = _simCard
//   //       .map((SimCard sim) => Text(
//   //           'Sim Card Number: (${sim.countryPhonePrefix}) - ${sim.number}\nCarrier Name: ${sim.carrierName}\nCountry Iso: ${sim.countryIso}\nDisplay Name: ${sim.displayName}\nSim Slot Index: ${sim.slotIndex}\n\n'))
//   //       .toList();
//   //   return Column(children: widgets);
//   // }

//   // Future<Album>? _futureAlbum;

//   Future<Position> _getGeoLocationPosition() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       await Geolocator.openLocationSettings();
//       return Future.error('Location services are disabled.');
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return Future.error('Location permissions are denied');
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       return Future.error(
//           'Location permissions are permanently denied, we cannot request permissions.');
//     }

//     return await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//   }

//   Future<String> GetAddressFromLatLong(Position position) async {
//     List<Placemark> placemarks =
//         await placemarkFromCoordinates(position.latitude, position.longitude);
//     print(placemarks);
//     Placemark place = placemarks[2];
//     Address =
//         '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
//     // setState(() {
//     return Address;
//     // });
//   }

//   Future<String?> uploadImage(
//       adharno, name, phoneno, position, filename, url) async {
//     var request = http.MultipartRequest('POST', Uri.parse(url));
//     // request.headers.addAll({'Position': position});
//     request.fields["adharno"] = adharno;
//     request.fields["name"] = name;
//     request.fields["phoneno"] = phoneno;
//     request.fields["position"] = position;
//     // request.fields["category"] = category;

//     request.files.add(await http.MultipartFile.fromPath('picture', filename));
//     var res = await request.send();
//     return res.reasonPhrase;
//   }

//   String state = "";
//   final ImagePicker _picker = ImagePicker();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: new IconButton(
//           icon: new Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () => Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => MyAppSecondPage()),
//           ),
//         ),
//         title: Text('User Form'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextFormField(
//               controller: controller1,
//               decoration: const InputDecoration(
//                   labelText: 'Nomanee Name',
//                   fillColor: Colors.white,
//                   filled: true),
//               autofocus: true,
//             ),
//             SizedBox(height: 10),
//             TextFormField(
//               controller: controller2,
//               decoration: const InputDecoration(
//                   labelText: 'Nomanee Phone No',
//                   fillColor: Colors.white,
//                   filled: true),
//               autofocus: true,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: controller3,
//               decoration: const InputDecoration(
//                   labelText: 'Current Address',
//                   fillColor: Colors.white,
//                   filled: true),
//               autofocus: true,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: controller4,
//               decoration: const InputDecoration(
//                   labelText: 'Nomanee Adhar No',
//                   fillColor: Colors.white,
//                   filled: true),
//               autofocus: true,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               // style: style,
//               onPressed: () async {
//                 var file = await _picker.pickImage(source: ImageSource.camera);
//                 Position position = await _getGeoLocationPosition();
//                 location =
//                     'Lat: ${position.latitude} , Long: ${position.longitude}';
//                 // Widget fillCards() {
//                 List<Widget> widgets = _simCard
//                     .map((SimCard sim) => Text(
//                         // 'Sim Card Number: (${sim.countryPhonePrefix}) - ${sim.number}\nCarrier Name: ${sim.carrierName}\nCountry Iso: ${sim.countryIso}\nDisplay Name: ${sim.displayName}\nSim Slot Index: ${sim.slotIndex}\n\n'))
//                         phno =
//                             'Sim Card Number: (${sim.countryPhonePrefix}) - ${sim.number}'))
//                     .toList();

//                 GetAddressFromLatLong(position);
//                 controller2.text = phno;

//                 controller3.text = Address + ' ' + location;
//                 var res = await uploadImage(controller4.text, controller1.text,
//                     phno, Address + ' ' + location, file?.path, widget.url
//                     // controller4.text
//                     );
//                 setState(() {
//                   state = res!;
//                   print(res);
//                 });
//               },
//               child: const Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () async {},
//       //   child: Icon(Icons.camera),
//       // )
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutterpage1/second.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:image_picker/image_picker.dart';
// import 'dart:async';

// import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_number/mobile_number.dart';

// pick image

// import 'package:http/http.dart' as http;

class ContactForm extends StatelessWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Form',
      home: UploadPage(),
    );
  }
}

// class StartPage extends StatelessWidget {
//   const StartPage({Key? key}) : super(key: key);

//   @override
//   Widget build(context) {
//     TextEditingController controller1 = TextEditingController();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter File Upload Example')
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: <Widget>[

//             TextFormField(
//               controller: controller1,
//               decoration: const InputDecoration(
//                 labelText: 'Date',
//                 fillColor: Colors.white,
//                 filled: true
//               ),
//               autofocus: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               child: const Text("Take me to the upload screen"),
//               onPressed: () => switchScreen(controller1.text, context),
//             )
//           ],
//         ),
//       )
//     );
//   }
//   void switchScreen(str, context) =>
//     Navigator.push(context, MaterialPageRoute(
//       builder: (context) => const UploadPage(url: 'http://192.168.43.134:3000/upload')
//     ));
// }

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  final String url = 'https://eventresponse.herokuapp.com/upload';

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  String location = 'Null, Click photo';
  static String Address = 'searching...';
  bool valuefirst = false;
  bool valuesecond = false;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  // TextEditingController controller5 = TextEditingController();

  String phno = '';
  String _mobileNumber = '';
  List<SimCard> _simCard = <SimCard>[];

  @override
  void initState() {
    super.initState();
    MobileNumber.listenPhonePermission((isPermissionGranted) {
      if (isPermissionGranted) {
        initMobileNumberState();
      } else {}
    });

    initMobileNumberState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initMobileNumberState() async {
    if (!await MobileNumber.hasPhonePermission) {
      await MobileNumber.requestPhonePermission;
      return;
    }
    String mobileNumber = '';
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      mobileNumber = (await MobileNumber.mobileNumber)!;
      _simCard = (await MobileNumber.getSimCards)!;
    } on PlatformException catch (e) {
      debugPrint("Failed to get mobile number because of '${e.message}'");
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _mobileNumber = mobileNumber;
    });
  }

  // Widget fillCards() {
  //   List<Widget> widgets = _simCard
  //       .map((SimCard sim) => Text(
  //           'Sim Card Number: (${sim.countryPhonePrefix}) - ${sim.number}\nCarrier Name: ${sim.carrierName}\nCountry Iso: ${sim.countryIso}\nDisplay Name: ${sim.displayName}\nSim Slot Index: ${sim.slotIndex}\n\n'))
  //       .toList();
  //   return Column(children: widgets);
  // }

  // Future<Album>? _futureAlbum;

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<String> GetAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemarks);
    Placemark place = placemarks[2];
    Address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    // setState(() {
    return Address;
    // });
  }

  Future<String?> uploadImage(
      query, name, phoneno, position, filename, url) async {
    var request = http.MultipartRequest('POST', Uri.parse(url));
    // request.headers.addAll({'Position': position});
    request.fields["query"] = query;
    request.fields["name"] = name;
    request.fields["phoneno"] = phoneno;
    request.fields["position"] = position;
    // request.fields["category"] = category;

    request.files.add(await http.MultipartFile.fromPath('picture', filename));
    var res = await request.send();
    return res.reasonPhrase;
  }

  String state = "";
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyAppSecondPage()),
          ),
        ),
        title: Text('Contact Form'),
        flexibleSpace: Container(
          // constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover),
          ),
        ),
      ),
      body: SingleChildScrollView(
        // constraints: BoxConstraints.expand(),

        // ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: controller1,
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Name',
                  // helperText: 'Keep it short, this is just a demo.',
                  // labelText: 'Patient Id',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  prefixText: ' ',
                  // suffixText: "C'",
                  suffixStyle: const TextStyle(color: Colors.green)),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: controller2,
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Phone no',
                  // helperText: 'Keep it short, this is just a demo.',
                  // labelText: 'Patient Id',
                  suffixIcon: IconButton(
                      onPressed: () async {
                        List<Widget> widgets = _simCard
                            .map((SimCard sim) => Text(
                                // 'Sim Card Number: (${sim.countryPhonePrefix}) - ${sim.number}\nCarrier Name: ${sim.carrierName}\nCountry Iso: ${sim.countryIso}\nDisplay Name: ${sim.displayName}\nSim Slot Index: ${sim.slotIndex}\n\n'))
                                phno =
                                    'Sim Card Number: (${sim.countryPhonePrefix}) - ${sim.number}'))
                            .toList();

                        // GetAddressFromLatLong(position);
                        controller2.text = phno;
                      },
                      icon: Icon(Icons.phone_android_outlined)),
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  prefixText: ' ',
                  // suffixText: "C'",
                  suffixStyle: const TextStyle(color: Colors.green)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller3,
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Current Location',
                  // helperText: 'Keep it short, this is just a demo.',
                  // labelText: 'Patient Id',
                  suffixIcon: IconButton(
                      onPressed: () async {
                        Position position = await _getGeoLocationPosition();
                        location =
                            'Lat: ${position.latitude} , Long: ${position.longitude}';

                        GetAddressFromLatLong(position);
                        controller2.text = phno;

                        controller3.text = Address + ' ' + location;
                      },
                      icon: Icon(Icons.navigation)),
                  prefixIcon: const Icon(
                    Icons.map,
                    color: Colors.green,
                    // IconButton(onPressed: onPressed, icon: Icon)
                    // onPressed: ()  {},
                  ),
                  prefixText: ' ',
                  // suffixText: "C'",
                  suffixStyle: const TextStyle(color: Colors.blue)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller4,
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Query Us-',
                  // helperText: 'Keep it short, this is just a demo.',
                  // labelText: 'Patient Id',
                  prefixIcon: const Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                  prefixText: ' ',
                  // suffixText: "C'",
                  suffixStyle: const TextStyle(color: Colors.green)),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 10),
            SizedBox(
                width: 300,
                child: ElevatedButton(
                  // style: style,
                  onPressed: () async {
                    var file =
                        await _picker.pickImage(source: ImageSource.camera);

                    var res = await uploadImage(
                        controller4.text,
                        controller1.text,
                        phno,
                        Address + ' ' + location,
                        file?.path,
                        widget.url
                        // controller4.text
                        );
                    setState(() {
                      state = res!;
                      print(res);
                    });
                  },
                  child: const Text('Submit'),
                )),
            // ElevatedButton(
            //   // style: style,
            //   onPressed: () async {
            //     var file = await _picker.pickImage(source: ImageSource.camera);

            //     var res = await uploadImage(controller4.text, controller1.text,
            //         phno, Address + ' ' + location, file?.path, widget.url
            //         // controller4.text
            //         );
            //     setState(() {
            //       state = res!;
            //       print(res);
            //     });
            //   },
            //   child: const Text('Submit'),
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {},
      //   child: Icon(Icons.camera),
      // )
    );
  }
}
